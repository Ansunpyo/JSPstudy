<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
	Connection conn = null;
	String sql="SELECT * FROM memberTBL";
	Statement stmt = null;
	ResultSet rs = null;
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/shopdb");
		conn = ds.getConnection();
		stmt = conn.createStatement();
		
		rs = stmt.executeQuery(sql);
		out.println("<table border='1' cellpadding='20'>");
		out.println("<tr><td>아이디</td><td>이름</td><td>주소</td></tr>");
		while(rs.next()) {
			String id = rs.getString(1);
			String name = rs.getString(2);
			String addr = rs.getString(3);
			out.println("<tr><td>" + id + "</td><td>" + name + "</td><td>" + addr + "</td></tr>");
		}
		out.println("</table>");
		} catch (Exception e) {
			out.println("<h3>레코드 등록에 실패하였습니다.</h3>");
			e.printStackTrace();
		}
		finally {
			try {
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>