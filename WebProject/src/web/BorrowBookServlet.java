package web;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class BorrowBookServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int chk=0;
		String ID=request.getParameter("ID");
		int id =Integer.parseInt(ID);
		Connection conn = null;
		Statement stmt = null;
		try {
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/webdb?serverTimezone=UTC","root","1234567890");
		if(conn==null)
			throw new Exception("데이터베이스에 입력할 수 없습니다.");
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from jsplibrary where id="+id+";"); 
		if(rs.next()) {
			String BORROW = rs.getString("borrow");
			int COUNT = rs.getInt("count");
			System.out.printf("%s\n",BORROW);
			if(BORROW.equals("Y"))
			{
				chk=1;
				String command = String.format("update jsplibrary set "+
						"borrow := 'N', count := %d  where id =  %d;",
						COUNT+1,id);
				int rowNUM = stmt.executeUpdate(command);
				if(rowNUM<1)
					throw new Exception("데이터를 DB에 입력할 수 없습니다.");
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
		System.out.printf("%d\n",chk);
		if(chk==1)
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("BorrowBookView.jsp");
			dispatcher.forward(request, response);	
		}
		else
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("NotBorrowBookView.jsp");
			dispatcher.forward(request, response);	
		}
	}
}
