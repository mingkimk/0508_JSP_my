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
		String delName = request.getParameter("dname");
		String sql = "delete from my where name=?";

		try {
			//(1 단계) JDBC 드라이버 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//(2 단계) 데이터베이스 연결 객체인 Connection 생성
			conn = DriverManager.getConnection(url, uid, pass);
			//(3 단계) Statement 객체 생성하기
			pstmt = conn.prepareStatement(sql);
			//(4 단계) 바인딩 변수를 채운다.
			pstmt.setString(1, delName);
			pstmt.executeUpdate();
			out.println("<script>alert ('삭제 성공')</script>");
			//out.println("<script>history.go(-1)</script>");
				out.println("<script>location.href='my_list.jsp'</script>");
		

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

			//response.sendRedirect("./research_list.jsp");
		} //finally의 끝
			//db접속
	%>






	<!-- 

delete from sample where name=삭제할 이름;
 -->



</body>
</html>