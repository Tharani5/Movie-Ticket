import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.InputMismatchException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Seatbook
 */
@WebServlet("/Seatbook")
public class Seatbook extends HttpServlet {
	static int seat;
	static int set;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String date=request.getParameter("moviedate");
		System.out.println(date);
		String time=request.getParameter("Timings")+request.getParameter("Class");
		String classe=request.getParameter("Class");
		char seatname=classe.charAt(0);
		int endSeatNumber=0;
		seat= Integer.parseInt(request.getParameter("Seats"));
		String moviename="teddy";
		System.out.println(date+" "+time+" "+classe+" "+seat);
		storeInDatabase(moviename,date);
		System.out.println("ahi");	
		HttpSession session=request.getSession();
		session.setAttribute("one", seat+"");
		session.setAttribute("date", date);	
		session.setAttribute("time", request.getParameter("Timings") );	
		session.setAttribute("classe", classe);	
		
		if(seatname=='K')
		{
		seatBooking(120, 'K',moviename,time,endSeatNumber,session,response,date);
		}
		if(seatname=='Q')
		{
		seatBooking(90, 'Q',moviename,time,endSeatNumber,session,response,date);
		}
		if(seatname=='J')
		{
		seatBooking(60, 'J',moviename,time,endSeatNumber,session,response,date);
		}
		if(set==1)
		{
			session.setAttribute("temp","Sorry it's out of range.. Enter Seats based on available count" );
			response.sendRedirect("outofrange.jsp");
		}
		else if(set==2)
		{
			session.setAttribute("temp","Sorry, It's Housefull.... Choose another Class or Timings" );
			response.sendRedirect("outofrange.jsp");
		}
		else
			response.sendRedirect("Payment.jsp");
	}
	void storeInDatabase(String moviename,String moviedate)
	{
		try 
		{
			int flag=1;
			String date=moviedate;			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/MaharajaCinemas","root","aspire@123");
			PreparedStatement preparedStatement=connection.prepareStatement("INSERT INTO "+moviename+"(DATE) VALUES (?)");
			ResultSet resultset=preparedStatement.executeQuery("select date from "+moviename);
			while(resultset.next())
			{
				if(resultset.getString(1).equals(date))
				{
					flag=0;
				}
			}
			if(flag==1)
			{
				preparedStatement.setString(1,date );
				int rs=preparedStatement.executeUpdate();
			}
		} 
		catch (ClassNotFoundException e) 
		{		
			System.out.println(e);
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
	}
	int getSeat(String time,String moviename,int endSeatNumber,String moviedate )
	{
		Connection connection;
		try 
		{
			String date=moviedate;
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/MaharajaCinemas","root","aspire@123");
			Statement stmt = connection.createStatement(ResultSet.TYPE_FORWARD_ONLY,ResultSet.CONCUR_UPDATABLE); 
			System.out.println("naem");
			ResultSet resultset=stmt.executeQuery("select * from "+moviename);
			System.out.println("work");
			while(resultset.next())
			{
				if(date.equals(resultset.getString(1)))
				{				
					endSeatNumber=resultset.getInt(time);	
					return endSeatNumber;
				}			
			}
		}
		catch (SQLException e) {
			System.out.println(e.getMessage());
			System.out.println("SEAT");
		}
		return 0;
	}
	void updateInDatabase(int endSeatNumber,int collectionAmount,int requiredSeat,String moviename,String time,String moviedate,Moviedetails moviedetails )
	{
		try 
		{
			String date=moviedate;
			System.out.println(time);
			System.out.println(date);
			System.out.println(moviedetails.moviename);
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/MaharajaCinemas","root","aspire@123");
			PreparedStatement preparedStatement=connection.prepareStatement("update "+moviedetails.moviename+" set "+time+"=? where date=?");			
			preparedStatement.setString(2, date);
			preparedStatement.setInt(1,endSeatNumber);
			preparedStatement.executeUpdate();
			Statement stmt = connection.createStatement(ResultSet.TYPE_FORWARD_ONLY,ResultSet.CONCUR_UPDATABLE); 
			ResultSet resultset=stmt.executeQuery("select * from "+moviename);			
			while(resultset.next())
			{
				if(date.equals(resultset.getString(1)))
				{				
					int amount=resultset.getInt("CollectionAmount")+collectionAmount;			
					resultset.updateInt("CollectionAmount",amount);
					resultset.updateRow();
				}
				
			}

		} catch (SQLException e)
		{
			System.out.println(e);
			System.out.println("UP");
		}
		}
	
	int startSeatNumber=1;
	int availableSeat=25;
	int requiredSeat;
	int ticketFee;
	void seatBooking(int fare,char seatName,String moviename,String time,int endSeatNumber,HttpSession  session,HttpServletResponse response,String moviedate)
	{		
		try 
		{
			endSeatNumber=getSeat(time,moviename,endSeatNumber,moviedate);
			availableSeat=25-endSeatNumber;
			session.setAttribute("startseat", seatName+""+(endSeatNumber+1));
			//check for availability of seats.
			if(availableSeat>=1)
			{
				System.out.println("How many seats you need out of "+availableSeat);
				System.out.println(seat);
				requiredSeat=seat;			
				if(requiredSeat<=25&&(endSeatNumber+requiredSeat)<=25)
				{
					endSeatNumber= requiredSeat+ endSeatNumber;	
					ticketFee=requiredSeat*fare;
					System.out.println("Your Fare : Rs "+ticketFee);
					session.setAttribute("ticketfee", ticketFee+"");
					//payment processing
					payment();
					//finally seat is booked.
					Moviedetails moviedetails=new Moviedetails(endSeatNumber,ticketFee,requiredSeat,moviename,time,moviedate);
					updateInDatabase(endSeatNumber,ticketFee,requiredSeat,moviename,time,moviedate,moviedetails);
					
					displaySeatNumber(seatName,moviename,time,endSeatNumber);
					startSeatNumber=endSeatNumber+1;
					availableSeat=25-endSeatNumber;
					
					session.setAttribute("endseat", seatName+""+(getSeat(time,moviename,endSeatNumber,moviedate)));
				}								
			}
			//if all seats are booked.
			else
			{
				System.out.println( "Sorry, It's Housefull.... Choose another Class or Timings");
				set=2;
			}
		}
		catch(InputMismatchException e)
		{
			System.out.println("You should enter only Numbers");
			
		}
	}
	void payment()
	{
		System.out.print("Payment Processing");
		//Sleep method to wait for sometime to complete payment process.
		for(int i=0;i<1;i++)
		{
			System.out.print(".");
			try 
			{
				Thread.sleep(300);
			}
			catch (InterruptedException e) 
			{
				System.out.println(e);
			}
		}
	}
	void displaySeatNumber(char seatName,String moviename,String time,int endSeatNumber)
	{
		System.out.print("\n----------------------------------");
		System.out.println("\n    Seat Booked From "+seatName+""+/*(getSeat(time,moviename,endSeatNumber,m)+1)+*/" to "+seatName+""+endSeatNumber+"\n\tEnjoy the day   ");
		System.out.println("----------------------------------");
		
	}

}
