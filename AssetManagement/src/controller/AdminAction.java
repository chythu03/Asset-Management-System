package controller;

import java.util.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.user;

public class AdminAction extends user{
	
	public AdminAction(int id, String name, String actor) {
		super(id, name, actor);
		// TODO Auto-generated constructor stub
	}
	public String getCurrentTimeStamp() {
	    SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//dd/MM/yyyy
	    Date now = new Date();
	    String strDate = sdfDate.format(now);
	    return strDate;
	}
	
	String create(String name,String category)
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/asset";
			String user="root";
			String pass="lokesh1999";
			String res="";
			Connection con=(Connection) DriverManager.getConnection(url,user,pass);
			String sql1="Select prod_id from products";
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql1);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
				res=rs.getString(1);
			
			String letter=res.substring(0,1);
			res=res.substring(1);
			int num=Integer.parseInt(res);
			num=num+1;
			String id=letter+num;
			String sql="Insert into products values(?,?,?)";
			ps=(PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, name);
			ps.setString(3, category);
			ps.executeUpdate();
			con.close();
			return id;
			//System.out.println("Record inserted");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
}
