<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="/p/css/main.css">
		<script type="text/javascript" src="/p/js/logistics.js"></script>
	</head>
	<body style="background-image: url('/p/image/bg1.jpg'); background-repeat: no-repeat; margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px;">
	
		<html:form action="/main.do" target="_top">
			<table width="100%" style="font-size: 16" border="0" >
				<tr>
					<td width="10%">
						<html:img src="/p/image/testlogo01.gif" alt="一二网络" onclick="logo_click_top()" style="cursor:pointer" />
					</td>
					<td width="47%">
						<marquee direction="up" scrollamount="1" behavior="scroll" hspace="0" vspace="0" height="30px" onmouseover="javascript:stop();" onmouseout="javascript:start();">
							<logic:iterate id="element" name="mainForm" property="topBean.infoList">
								<span style="font-size: 14"><bean:write name="element" /> </span>
								<br>
							</logic:iterate>
						</marquee>
					</td>
					<td width="18%" align="right">
						<logic:equal name="mainForm" property="openCloseFlag" value="open">
							<logic:equal name="mainForm" property="conditionResultFlag" value="condition">
								<a onclick="topBeanSubmit('/main.do','CLOSESEARCH');return false;" href="#">关闭搜索</a>
							</logic:equal>
							<logic:equal name="mainForm" property="conditionResultFlag" value="result">
								<a onclick="topBeanSubmit('/main.do','RETURNSEARCH');return false;" href="#">返回搜索</a>
								<a onclick="topBeanSubmit('/main.do','CLOSESEARCH');return false;" href="#">关闭搜索</a>
							</logic:equal>
						</logic:equal>
						<logic:equal name="mainForm" property="openCloseFlag" value="close">
							<a onclick="topBeanSubmit('/main.do','OPENSEARCH');return false;" href="#">打开搜索</a>
						</logic:equal>
						<a onclick="window.open(this.href, '_blank','resizable=yes,width=1024,height=768,top=0,left=0,toolbar=yes,menubar=yes,scrollbars=yes, resizable=yes,location=yes, status=yes');return false;" href="/p/form/register.jsp"></a>
					</td>
					<td width="25%" align="right">
						<a href="zduanxin.html" target="_top" >发布信息</a>	
						<a href="zindex.html" target="_top" >网站首页</a>
						<a href="zzhuce.html" target="_top" >注册会员</a>
						<a href="zlianxi.html" target="_top" >联系我们</a>
					</td>
				</tr>
			</table>
			<html:hidden property="formEvent" styleId="formEvent" />
			<html:hidden property="openCloseFlag" styleId="openCloseFlag" />
		</html:form>
	</body>
</html>
