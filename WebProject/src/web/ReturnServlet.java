package web;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class ReturnServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String ID=request.getParameter("ID");
		int id =Integer.parseInt(ID);
		Connection conn = null;
		Statement stmt = null;
		try {
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/webdb?serverTimezone=UTC","root","1234567890");
		if(conn==null)
			throw new Exception("�����ͺ��̽��� �Է��� �� �����ϴ�.");
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select borrow from jsplibrary where id="+id+";"); 
		if(rs.next()) {
			String BORROW = rs.getString("borrow");
			if(BORROW.equals("N"))
			{
				String command = String.format("update jsplibrary set "+
						"borrow := 'Y' where id =  %d;",id);
				int rowNUM = stmt.executeUpdate(command);
				if(rowNUM<1)
					throw new Exception("�����͸� DB�� �Է��� �� �����ϴ�.");
			}
		}
		}
		catch (Exception e) {
		}
	finally {
		try {
			stmt.close();
		}
		catch(Exception ignored){
		}
		try {
			conn.close();
		}
		catch(Exception ignored){
		}
	}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/book-list");
		dispatcher.forward(request, response);
	}
}
