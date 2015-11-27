<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<html>
	<head>
		<title>物流网注册成功！</title>
		<link rel="stylesheet" type="text/css" href="/p/css/register.css">
		<script type="text/javascript" src="/p/js/logistics.js"></script>
	</head>
	<body style="background-image: url('/p/image/bg1.jpg'); background-repeat: no-repeat;">
		<html:form action="/register">
			<table align="center" width="80%" style="font-size: 14">
				<tr>
					<td align="left">
						
					</td>
				</tr>
			</table>
			<table align="center" width="80%" style="font-size: 14">
				<tr>
					<td align="center">
						恭喜您注册成功,欢迎您使用本软件,我们将竭诚为您服务.
						<br>
						<br>
						<logic:notEmpty name="registerForm" property="username">
							请牢记您的用户名：<font style="font: bold;"><bean:write name="registerForm" property="username" /> </font>
						</logic:notEmpty>
						<br>
						<br>
						<a href="/download/logistics.zip">点击下载物流网客户端</a>
						<br>
						<br>
					</td>
				</tr>
				<tr>
					<td align="center">
						
					</td>
				</tr>
			</table>
		</html:form>
	</body>
</html>
