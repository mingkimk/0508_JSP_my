
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
td {
	text =align: center
}
</style>
</head>
<body>
<%@include file="./dbinfo.jsp"%>
	<table border=1 width=400>
	
	<tr>
			<td>이름</td>
			<td>제목</td>
			<td>내용</td>
			<td colspan=2>삭제/수정</td>
		</tr>

		<%
			request.setCharacterEncoding("UTF-8");  
			String sql="select * from my";
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection(url, uid, pass);
				stmt = conn.createStatement();

				rs=stmt.executeQuery(sql);
				while (rs.next()) {
					out.println("<tr>");
					out.println("<td>" + rs.getString("name") + "</td>");
					out.println("<td>" + rs.getString("title") + "</td>");
					out.println("<td>" + rs.getString("contents") + "</td>");
					out.println("<td><a href='./my_del.jsp?dname="+rs.getString("name") +"'>삭제</td>");
					out.println("<td><a href='./my_form_m.jsp?dname="+rs.getString("name") +"'>수정</td>");
					
					out.println("<tr>");
				}

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}

			
			} //finally의 끝
		%>

		
		<tr>
	
		<td  colspan=5><a href="./my_form.jsp">사용자 추가</a></td>
		</tr>
		
	</table>

</body>
</html>