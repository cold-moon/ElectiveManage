<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#e5eecc">
	<form action="" method="post" id="myform">
		<h3>&nbsp;&nbsp;个人信息：</h3>
		<table width="400px" border="1" align="center" cellpadding="2"
			cellspacing="2" bgcolor="#EEE8AA">
			<tr>
				<td width="150px" align="center">身&nbsp;&nbsp; 份：</td>
				<td align="center">教&nbsp;&nbsp;师</td>
			</tr>
			<tr>
				<td width="150px" align="center"><label for="No">工
						&nbsp;&nbsp;号：</label></td>
				<td align="center">${t.getNo()}</td>
			</tr>
			<tr>
				<td width="150px" align="center"><label for="username">姓&nbsp;&nbsp;
						名：</label></td>
				<td align="center">${t.getName()}</td>
			</tr>
			<tr>
				<td width="150px" align="center">性&nbsp;&nbsp;别：</td>
				<td align="center">${t.getSex()}</td>
			</tr>
			<tr>
				<td width="150px" align="center"><label for="age">年&nbsp;&nbsp;龄：</label></td>
				<td align="center">${t.getAge()}</td>
			</tr>
			<tr>
				<td width="150px" align="center"><label for="collage">学&nbsp;&nbsp;院：</label></td>
				<td align="center">${t.getCollage()}</td>
			</tr>
		</table>
	</form>
</body>
</html>