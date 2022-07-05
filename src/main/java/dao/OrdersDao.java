package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import context.DBContext;
import model.Cart;
import model.Order;
import model.Product;

public class OrdersDao {
	public void insertOrder(Order o, Cart c) throws Exception {
		Connection conn = new DBContext().getConnection();
		try {
			List<Product> pr = c.getItems();
			String sql = "INSERT INTO Orders_detail VALUES (?, ?, ?, null)";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT TOP 1 order_id FROM Orders_detail ORDER BY order_id DESC");
			int id = 0;
			if(rs.next()) {
				id = rs.getInt("order_id");
			}
			id = id + 1;
			String sql2 = "SET IDENTITY_INSERT Orders ON"
					+ " INSERT INTO Orders (user_mail, order_id, order_status, order_date, order_discount_code, order_address) VALUES (?, ?, ?, ?, ?, ?)"
					+ " SET IDENTITY_INSERT Orders OFF";
			PreparedStatement statement2 = conn.prepareStatement(sql2);			
			statement2.setString(1, o.getUserMail());
			statement2.setString(2,"" + id);
			statement2.setString(3,"" + o.getStatus());			
			Date date = new Date(Calendar.getInstance().getTime().getTime());
			SimpleDateFormat f = new SimpleDateFormat("yyyy-mm-dd");
			String valiDate = f.format(date);			
			statement2.setDate(4, date);
			statement2.setString(5,"" + o.getDiscount());			
			statement2.setString(6,"" + o.getAddress());
			statement2.executeUpdate();
			statement2.close();
			PreparedStatement statement = conn.prepareStatement(sql);
			for (Product p : pr) {
				statement.setString(1,"" + id);
				statement.setString(2,"" + p.getId());
				statement.setString(3,"" + 2);		
				statement.executeUpdate();
			}
			statement.close();
		}
		catch (SQLException ex) {
			
			ex.printStackTrace();
		}

	}
}
