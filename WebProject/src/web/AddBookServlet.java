package web;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class AddBookServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String ID=request.getParameter("IDD");
		String TITLE=request.getParameter("TITLEE");
		String WRITER=request.getParameter("WRITERR");
		String PRICE=request.getParameter("PRICEE");
		int id =Integer.parseInt(ID);
		int price =Integer.parseInt(PRICE);
		Connection conn = null;
		Statement stmt = null;
		int chk=0;
		try {
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/webdb?serverTimezone=UTC","root","1234567890");
		if(conn==null)
			throw new Exception("데이터베이스에 입력할 수 없습니다.");
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from jsplibrary where id="+id+";"); 
		if(rs.next()) chk=1;
		else {
			chk=2;
			String command = String.format("insert into jsplibrary"+
					" (id, title, writer,price,borrow,count) values (%d , '%s','%s', %d ,'Y', 0);",
					id,TITLE,WRITER,price);
			int rowNUM = stmt.executeUpdate(command);
			if(rowNUM<1)
				throw new Exception("데이터를 DB에 입력할 수 없습니다.");
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
		if(chk==1)response.sendRedirect("http://localhost:8080/WebProject/ExistedID.jsp");
		if(chk==2)response.sendRedirect("http://localhost:8080/WebProject/book-list");
	}
}
