import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class RegisterDao {
	private String dbUrl = "jdbc:mysql://localhost:3306/Movieticketbooking";
	private String dbUname = "root";
	private String dbPassword = "aspire@123";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	static String username;
	
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public Connection getConnection()
	{
		Connection con = null;
		try {
			con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	
	
	public String insert(NewUser newuser)
	{
		loadDriver(dbDriver);
		Connection con = getConnection();
		String result = "Data entered successfully";
		String sql = "insert into userdetail values(?,?,?,?)";
		
		PreparedStatement preparedstatement;
		try {
		preparedstatement = con.prepareStatement(sql);
		preparedstatement.setString(1, newuser.getUname());
		preparedstatement.setString(2, newuser.getPassword());
		preparedstatement.setString(3, newuser.getEmail());
		preparedstatement.setString(4, newuser.getPhone());
		preparedstatement.executeUpdate();
		} catch (SQLException e) {
			result = "Data not entered";
		}
		System.out.println("yes");
		return result;
	}
	public boolean passwordCheck() 
	{
		loadDriver(dbDriver);
		Connection con = getConnection();
		Statement stmt;
		try {
			stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
			ResultSet rs=stmt.executeQuery("select email,password,uname from userdetail");  
			while(rs.next())
			{
				String email=rs.getString(1);
				String password= rs.getString(2);
				if(Login.uname.equals(email)&&Login.password.equals(password))
				{
					username=rs.getString(3);
					return true;
				}
			}
			
		} catch (SQLException e) 
		{
		
		}			 
		return false;
	}
}