package web;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class BookListServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String strUpperSeqNo=request.getParameter("LAST_SEQ_NO");
		int upperSeqNo;
		if(strUpperSeqNo==null) upperSeqNo=0;
		else upperSeqNo=Integer.parseInt(strUpperSeqNo);
		BookList list=readDB(upperSeqNo);
		request.setAttribute("Book_LIST", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("BookListView.jsp");
		dispatcher.forward(request, response);
	}
	private BookList readDB(int upperSeqNo)
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
		ResultSet rs = stmt.executeQuery("select * from jsplibrary where id > " + 
										upperSeqNo + " order by id asc;"); 
		for (int cnt = 0; cnt < 5; cnt++) {
			if(!rs.next())
				break;
			list.setId(cnt, rs.getString("id"));
			list.setTitle(cnt, rs.getString("title"));
			list.setWriter(cnt, rs.getString("writer"));
			list.setPrice(cnt, rs.getInt("price"));
			list.setBorrow(cnt, rs.getString("borrow"));
			list.setCount(cnt, rs.getInt("count"));
		}
		if(upperSeqNo>0) list.setFirstPage(false);
		else list.setFirstPage(true);
		if(!rs.next())
			list.setLastPage(true);
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
