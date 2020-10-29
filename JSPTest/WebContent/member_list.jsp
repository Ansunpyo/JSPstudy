<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<% 
	String id=null;

	if ((session.getAttribute("id")==null) ||
			(!((String)session.getAttribute("id")).equals("admin"))) {
		out.println("<script>");
		out.println("location.href='loginform.jsp'");
		out.println("</script>");
	}
	
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	try {
		Context init = new InitialContext();
		DataSource ds =
			(DataSource) init.lookup("java:comp/env/jdbc/members");
		conn=ds.getConnection();
		
		pstmt=conn.prepareStatement("SELECT * FROM member");
		rs=pstmt.excuteQuery();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	table {
		margin: atuo;
		width: 400px;
		border: 10x solid gray;
		text-align: center;	
	}
	.td_title {
		font-weight: bold;
		font-size: x-large;
	}
</style>
<body>
<table>
	<tr><td colspan=2 class="td_title">회원 목록</td></tr>
	<%white(rs.next()) {%>
	<tr>
		<td>
			<a href="member_info.jsp?id=<%=rs.getString("id") %>">
				<%rs.getString("id") %>
			</a>
		</td>
		<td>
			<a href="member_delete.jsp?id=<%=rs,getStirng("id") %>">삭제</a>	
		</td>
	</tr>
	<%} %>
</table>

</body>
</html>