package web;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class LoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String ID=request.getParameter("ID");
		String PASSWORD=request.getParameter("PASSWORD");
		int chk=0;
		if(ID==""||PASSWORD=="") chk=3;
		else {
		Connection conn = null;
		Statement stmt = null;
		try {
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/webdb?serverTimezone=UTC","root","1234567890");
		if(conn==null)
			throw new Exception("데이터베이스에 입력할 수 없습니다.");
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from usersinfo where id='"+ID+"';"); 
		if(rs.next())
		{
			String chkid=rs.getString("id");
			String chkpw=rs.getString("password");
			if(ID.equals(chkid) && PASSWORD.equals(chkpw))
			{
				chk=2;
				HttpSession session = request.getSession();
				session.setAttribute("ID",ID);
			}
			else chk=1;
		}
		else chk=1;
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
	}
		if(chk==1)response.sendRedirect("http://localhost:8080/WebProject/CheckIDPW.jsp");
		if(chk==2)response.sendRedirect("http://localhost:8080/WebProject/SuccessLogin.jsp");
		if(chk==3)response.sendRedirect("http://localhost:8080/WebProject/DBError.jsp");
	}
}
