<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="./dbinfo.jsp"%>
	<%
		request.setCharacterEncoding("UTF-8");
		String uName = request.getParameter("uname");
		String utitle = request.getParameter("ititle");
		String ucontents = request.getParameter("icontents");
		String sql="update my set contents=? where name=?";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, uid, pass);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uName);
			pstmt.setString(2, utitle);
			pstmt.setString(3, ucontents);
		
			
			pstmt.executeUpdate();
			out.println("등록 성공");
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
		
			response.sendRedirect("./my_list.jsp");
		}//finally의 끝
	%>
	<!-- 
update sample set age=? where name=?

 -->

</body>
</html>