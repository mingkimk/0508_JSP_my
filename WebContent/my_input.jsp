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
		request.setCharacterEncoding("UTF-8");//jsp간 정보를  주고 받을때 전달 방식 /request 내장객체

		String name = request.getParameter("iname");
		String title = request.getParameter("ititle");
		String contents = request.getParameter("icontents");
	%>
	<%
		// 반드시 web-inf에 bin에저장해야 한다. 그리고 이클립스 갱신
		String sql = "insert into my values(?,?,?)";
		try {
			//(1 단계) JDBC 드라이버 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//(2 단계) 데이터베이스 연결 객체인 Connection 생성
			conn = DriverManager.getConnection(url, uid, pass);
			//(3 단계) Statement 객체 생성하기
			pstmt = conn.prepareStatement(sql);
			//(4 단계) 바인딩 변수를 채운다.
			pstmt.setString(1, name);
			pstmt.setString(2, title);
			pstmt.setString(3, contents);

			//(5단계) SQL문을 실행하여 결과 처리
			pstmt.executeUpdate();
			out.println("등록 성공");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			//(6단계) 사용한 리소스 해제
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

			response.sendRedirect("./my_list.jsp");
		} //finally의 끝
	%>

</body>
</html>