package web;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class BookListServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BookList list=readDB();
		request.setAttribute("Book_LIST", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("BookListView.jsp");
		dispatcher.forward(request, response);
	}
	private BookList readDB()
						throws ServletException{
		BookList list = new BookList();
		Connection conn = null;
		Statement stmt = null;
		try {
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/webdb?serverTimezone=UTC","root","1234567890");
		if(conn==null)
			throw new Exception("데이터베이스에 입력할 수 없습니다.");
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from jsplibrary order by id asc;");
		int cnt=0;
		while(true) {
			if(!rs.next())
				break;
			list.setId(cnt, rs.getString("id"));
			list.setTitle(cnt, rs.getString("title"));
			list.setWriter(cnt, rs.getString("writer"));
			list.setPrice(cnt, rs.getInt("price"));
			list.setBorrow(cnt, rs.getString("borrow"));
			list.setCount(cnt, rs.getInt("count"));
			cnt++;
		}
		}
		catch (Exception e) {
			throw new ServletException(e);
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
		return list;
	}
}
