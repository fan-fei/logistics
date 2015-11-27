<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="/p/css/main.css">
		<script type="text/javascript" src="/p/js/common.js"></script>
	</head>
	<body style="background-image: url('/p/image/bg1.jpg'); background-repeat: no-repeat; background-attachment: fixed; margin: 5px 5px 5px 5px; padding: 0px 0px 0px 0px;" onload="myGet(1);" onunload="mySet(1);">
		<html:form action="/main.do" target="_parent">
			<logic:iterate id="element" name="mainForm" property="leftTopBean.result" indexId="myIndex">
				<table width="100%" style="margin-bottom: 4px; border-bottom: 1px solid gray;">
					<tr>
						<td width="3%" nowrap="nowrap">
							<span style="font-size: 14"><%=myIndex + 1%> &nbsp;&nbsp;</span>
						</td>
						<td width="10%">
							<span style="font-size: 14">[ <bean:write name="element" property="shi" /> ] &nbsp;&nbsp;</span>
						</td>
						<td width="62%">
							<span style="font-size: 14"><bean:write name="element" property="info" /> &nbsp;&nbsp;</span>
						</td>
						<td width="20%">
							<span style="font-size: 14"><bean:write name="element" property="mobile" /> </span> &nbsp;/&nbsp;
							<span style="font-size: 14"><bean:write name="element" property="telephone" /> </span>
						</td>
						<td width="5%">
							<span style="font-size: 14"><bean:write name="element" property="time" /> &nbsp;&nbsp;</span>
						</td>
					</tr>
				</table>
			</logic:iterate>
			<logic:empty name="mainForm" property="leftTopBean.result">
				<span style="font-size: 14">无结果数据！</span>
			</logic:empty>
		</html:form>
	</body>
</html>
