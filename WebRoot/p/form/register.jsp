<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<html>
	<head>
		<title>物流网注册！</title>
		<link rel="stylesheet" type="text/css" href="/p/css/register.css">
		<script type="text/javascript" src="/p/js/jquery.js"></script>
		<script type="text/javascript" src="/p/js/logistics.js"></script>
	</head>
	<%
	//访问次数计数
	if (request.getSession().isNew()) {
		request.getSession().setAttribute("countSession","new");
	}
	%>
	<body onload="registerFormOnload('/register.do','INIT')" style="background-image: url('/p/image/bg1.jpg'); background-repeat: no-repeat;">
		<html:form action="/register">
			
			<table align="center">
				<tr>
					<td align="center" style="font-size: 16">
						欢迎您注册物流网！
						<br>
						<br>
					</td>
				</tr>
			</table>
			<table align="center" width="605" style="font-size: 14">
				<tr>
					<td align="right" width="16%" style="margin: 40px 40px 40px 40px;">
						单位名称
					</td>
					<td width="25%">
						<html:text property="companyname" style="width:200px; height:26px; margin: 3px 10px 3px 10px;" maxlength="12" />
					</td>
					<td align="left" >
						2-12位，例：某某货站，某某物流
					</td>
					<td width="20%">
						<font color="red"><html:errors property="companyname" /> </font>
					</td>
				</tr>
				<tr>
					<td align="right">
						用户名
					</td>
					<td width="25%">
						<html:text property="username" style="width:200px; height:26px; margin: 3px 10px 3px 10px;" maxlength="8" />
					</td>
					<td align="left" width="20%">
						2-8位，推荐本人姓名，方便记忆
					</td>
					<td width="30%">
						<font color="red"><html:errors property="username" /> </font>
					</td>
				</tr>
				<tr>
					<td align="right">
						密码
					</td>
					<td>
						<html:password property="password" style="width:200px; height:26px; margin: 3px 10px 3px 10px;" maxlength="8" />
					</td>
					<td>
						6-8位
					</td>
					<td>
						<font color="red"><html:errors property="password" /> </font>
					</td>
				</tr>
				<tr>
					<td align="right">
						密码确认
					</td>
					<td>
						<html:password property="passwordConfirm" style="width:200px; height:26px; margin: 3px 10px 3px 10px;" maxlength="8" />
					</td>
					<td>
						6-8位
					</td>
					<td>
						<font color="red"><html:errors property="passwordConfirm" /> </font>
					</td>
				</tr>
				<tr>
					<td align="right">
						真实姓名
					</td>
					<td>
						<html:text property="realname" style="width:200px; height:26px; margin: 3px 10px 3px 10px;" maxlength="4" />
					</td>
					<td>
						请与身份证保持一致
					</td>
					<td>
						<font color="red"><html:errors property="realname" /> </font>
					</td>
				</tr>
				<tr>
					<td align="right">
						身份证号
					</td>
					<td>
						<html:text property="shenfenid" style="width:200px; height:26px; margin: 3px 10px 3px 10px;" maxlength="18" />
					</td>
					<td>
					</td>
					<td>
						<font color="red"><html:errors property="shenfenid" /> </font>
					</td>
				</tr>
				<tr>
					<td align="right">
						省
					</td>
					<td>
						<html:select property="sheng1" styleId="sheng1" onchange="sheng1Change();" style="width:200px; height:28px; margin: 3px 10px 3px 10px;">
							<html:option value=""></html:option>
							<logic:present name="shengSession">
								<html:optionsCollection name="shengSession" label="name" value="id" />
							</logic:present>
						</html:select>
					</td>
					<td>
					</td>
					<td>
						<font color="red"><html:errors property="sheng1" /> </font>
					</td>
				</tr>
				<tr>
					<td align="right">
						市
					</td>
					<td>
						<html:select property="shi1" styleId="shi1" style="width:200px; height:28px; margin: 3px 10px 3px 10px;" >
							<html:option value=""></html:option>
							<logic:present name="shiSession">
								<html:optionsCollection name="shiSession" label="name" value="id" />
							</logic:present>
						</html:select>
					</td>
					<td>
					</td>
					<td>
						<font color="red"><html:errors property="shi1" /> </font>
					</td>
				</tr>
				<tr>
					<td align="right">
						地址信息
					</td>
					<td>
						<html:text property="address" style="width:200px; height:26px; margin: 3px 10px 3px 10px;" maxlength="20" />
					</td>
					<td>
					</td>
					<td>
						<font color="red"><html:errors property="address" /> </font>
					</td>
				</tr>
				<tr>
					<td align="right">
						手机
					</td>
					<td>
						<html:text property="mobile" style="width:200px; height:26px; margin: 3px 10px 3px 10px;" maxlength="11" />
					</td>
					<td>
						例：13800001111
					</td>
					<td>
						<font color="red"><html:errors property="mobile" /> </font>
					</td>
				</tr>
				<tr>
					<td align="right">
						固定电话
					</td>
					<td>
						<html:text property="telephone" style="width:200px; height:26px; margin: 3px 10px 3px 10px;" maxlength="12" />
					</td>
					<td>
						例：01088887777
					</td>
					<td>
						<font color="red"><html:errors property="telephone" /> </font>
					</td>
				</tr>
				<tr>
					<td align="right">
						验证码
					</td>
					<td>
						<html:text property="imgcode" style="width:200px; height:26px; margin: 3px 10px 3px 10px;" maxlength="4" />
					</td>
					<td>
						<html:img src="/register.do?formEvent=IMGCODECHANGE"  styleId="imgcoderesult" onclick="imgcodeChange();" title="看不清楚？点击更换图片。" />
						&nbsp;&nbsp;&nbsp;<a href="#" onclick="imgcodeChange();return false;" style="vertical-align: 5px;" >看不清？换一张！</a>
					</td>
					<td>
						<font color="red"><html:errors property="imgcode" /> </font>
					</td>
				</tr>
				<tr>
					<td align="right">
					</td>
					<td align="center">
						<br>
						<html:submit value="注册" styleClass="btn2" onclick="javascript:window.document.getElementById('formEvent').value = 'REGISTER'" style="width:70px" />
					</td>
					<td colspan="2">
						<br> 
						<div id="kefuphone"></div>
					</td>
				</tr>
			</table>
			<html:hidden property="formEvent" styleId="formEvent" />
			<html:hidden property="kefuphone" styleId="kefuphone" />
		</html:form>
		
	</body>
</html>
