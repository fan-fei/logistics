<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<html>
	<head>
		<title>亿尔配货网  联系电话0312-5569012 13331253099</title>
		<script type="text/javascript">
		var accessCount =<%=request.getSession().getAttribute("accessCount")%>;
		if (accessCount != null){
			self.status="您是本站第" +<%=request.getSession().getAttribute("accessCount")%> +"位访问者!";
			}
		</script>
		<script type="text/javascript" src="/p/js/common.js"></script>
		<script type="text/javascript">var CurrentActive = true;</script>
		<script type="text/javascript">setMainCurrentActive();</script>
		<meta name="baidu-site-verification" content="wbUbF8agWK" />
		<meta content="亿尔配货,保定配货站,物流信息,全国空车配货,北京配货站" name="keywords"/>
	
	</head>
	<%
	//访问次数计数
	if (request.getSession().isNew()) {
		request.getSession().setAttribute("countSession","new");
	}
	%>

	<html:form action="/main.do">
		<frameset id="mainFrame" frameborder="yes" rows="9%,*" bordercolor="liteGreen">
			<frame id="topFrame" src="/p/form/top.jsp" scrolling="no" noresize="noresize">
			<frameset cols="91%,*">
				<frame id="leftFrame" name="leftFrame" src="/p/form/left.jsp" scrolling="no" noresize="noresize">
				<frame id="rightFrame" name="rightFrame" src="/p/form/right.jsp" scrolling="no" noresize="noresize">
			</frameset>
		</frameset>
	</html:form>
</html>
