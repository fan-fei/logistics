<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<html>
	<head>
		<title>亿尔配货网</title>
		<meta content="配货,配货站,配货网,空车配货,物流网,信息网,配货信息,物流信息,亿尔,亿尔配货,1256,1256w,空车找货,找车,物流,信息部,空车,找车" name="keywords"/>
	</head>
	<html:form action="/main.do">
		<logic:equal name="mainForm" property="openCloseFlag" value="open">
			<frameset rows="50%,*" bordercolor="liteGreen">
				<frame id="leftTopFrame" name="leftTopFrame" src="/p/form/leftTop.jsp" noresize="noresize">
				<frame id="leftBottomFrame" name="leftBottomFrame" src="/p/form/leftBottom.jsp" noresize="noresize">
			</frameset>
		</logic:equal>
		<logic:equal name="mainForm" property="openCloseFlag" value="close">
			<frameset rows="100%,*" bordercolor="liteGreen" frameborder="no" border="1" >
				<frame id="leftTopFrame" name="leftTopFrame" src="/p/form/leftTop.jsp" frameborder="1" noresize="noresize">
				<frame id="leftBottomFrame" name="leftBottomFrame"  src="/p/form/leftBottom.jsp" noresize="noresize">
			</frameset>
		</logic:equal>
	</html:form>
</html>
