<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="/p/css/main.css">
		<script type="text/javascript" src="/p/js/logistics.js"></script>
		<script type="text/javascript" src="/p/js/common.js"></script>
		<script type="text/javascript">
			function sett() {
				var event = sett.arguments[0];
				if (event == 1) {
					leftBottomBeanSubmit('/main.do', 'SHENGCLICK');
				}
				if (event == 2) {
					leftBottomBeanSubmit('/main.do', 'SHICLICK');
				}
			}
		</script>
	</head>
	<body style="background-image: url('/p/image/bg1.jpg'); background-repeat: no-repeat; background-attachment: fixed; margin: 5px 5px 5px 5px; padding: 0px 0px 0px 0px;" onload="myGet(2);" onunload="mySet(2);">
		<html:form action="/main.do" target="_top">
			<logic:equal name="mainForm" property="conditionResultFlag" value="condition">
				<table width="75%">
					<tr>
						<td>
							<span style="font-size: 14">省(双击添加)</span>
						</td>
						<td>
							<span style="font-size: 14">市(双击添加)</span>
						</td>
						<td>
							<span style="font-size: 14">县(双击添加)</span>
						</td>
						<td>
						</td>
						<td>
							<span style="font-size: 14">搜索关键字(双击删除)</span>
						</td>
					</tr>
					<tr>
						<td>
							<html:select property="leftBottomBean.sheng" styleId="sheng" size="10" style="width:100px" ondblclick="leftBottomBeanSubmit('/main.do','SHENGDBLCLICK')" onchange="setTimeout('sett(1)', 500);">
								<html:optionsCollection property="leftBottomBean.shengList" label="name" value="id" />
							</html:select>
						</td>
						<td>
							<html:select property="leftBottomBean.shi" styleId="shi" size="10" style="width:100px" ondblclick="leftBottomBeanSubmit('/main.do','SHIDBLCLICK')" onchange="setTimeout('sett(2)', 500);">
								<html:optionsCollection property="leftBottomBean.shiList" label="name" value="id" />
							</html:select>
						</td>
						<td>
							<html:select property="leftBottomBean.xian" styleId="xian" size="10" style="width:100px" ondblclick="leftBottomBeanSubmit('/main.do','XIANDBLCLICK')">
								<html:optionsCollection property="leftBottomBean.xianList" label="name" value="id" />
							</html:select>
						</td>
						<td>
							<html:button property="添加市" value="添加市" styleClass="btn2" onclick="leftBottomBeanSubmit('/main.do','ADDSHI')" style="width:70px" />
							<br>
							<html:button property="添加县" value="添加县" styleClass="btn2" onclick="leftBottomBeanSubmit('/main.do','ADDXIAN')" style="width:70px" />
							<br>
							<html:button property="所有市" value="所有市" styleClass="btn2" onclick="leftBottomBeanSubmit('/main.do','ALLSHI')" style="width:70px" />
							<br>
							<html:button property="所有县" value="所有县" styleClass="btn2" onclick="leftBottomBeanSubmit('/main.do','ALLXIAN')" style="width:70px" />
							<br>
							<html:button property="清空" value="清空" styleClass="btn2" onclick="leftBottomBeanSubmit('/main.do','CLEAR')" style="width:70px" />
						</td>
						<td>
							<html:select property="leftBottomBean.keyString" styleId="keyString" size="10" style="width:100px" ondblclick="leftBottomBeanSubmit('/main.do','KEYSTRINGDBLCLICK')">
								<html:optionsCollection property="leftBottomBean.keyStringList" label="name" value="name" />
							</html:select>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<span style="font-size: 14;"> 请输入搜索关键字：</span>
							<html:text styleId="searchString" property="leftBottomBean.searchString" style="width:200px; height:26px; margin: 3px 10px 3px 10px;"></html:text>
							<html:button property="添加 " value="添加" styleClass="btn2" onclick="leftBottomBeanSubmit('/main.do','ADDSEARCHSTRING')" style="width:70px" />
						</td>
						<td colspan="1">
							<html:button property="搜索" value="搜索" styleClass="btn2" onclick="leftBottomBeanSubmit('/main.do','QUERY')" style="width:70px" />
						</td>
					</tr>
				</table>
			</logic:equal>
			<logic:equal name="mainForm" property="conditionResultFlag" value="result">
				<logic:iterate id="element" name="mainForm" property="leftBottomBean.result" indexId="myIndex">
					<table width="100%" style="margin-bottom: 4px; border-bottom: 1px solid gray;">
						<tr>
							<td width="3%" nowrap="nowrap">
								<span style="font-size: 14"><%=(myIndex + 1)%> &nbsp;&nbsp;</span>
							</td>
							<td width="10%">
								<span style="font-size: 14">[ <bean:write name="element" property="shi" /> ] &nbsp;&nbsp;</span>
							</td>
							<td width="62%">
								<span style="font-size: 14"><bean:write name="element" property="info" filter="false" /> </span>
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
				<logic:empty name="mainForm" property="leftBottomBean.result">
					<span style="font-size: 14">无结果数据！</span>
				</logic:empty>
			</logic:equal>
			<html:hidden property="formEvent" styleId="formEvent" />
			<html:hidden property="openCloseFlag" styleId="openCloseFlag" />
			<html:hidden property="conditionResultFlag" styleId="conditionResultFlag" />
			<html:hidden property="leftBottomBean.keyListEmptyFlag" styleId="keyListEmptyFlag" />
			<script>
				window.setInterval(pageAutoSubmit1,<bean:write name="mainForm" property="leftBottomBean.refreshSeconds" />);
				window.setInterval(pageAutoSubmit2,100);
				var onceOK = false;
				function pageAutoSubmit1(){
					if(parent.parent.CurrentActive){
						window.document.getElementById("formEvent").value = "AUTOSUBMIT";
						window.document.getElementsByTagName('form')[0].submit();
					}else{
						onceOK = true;
					}
				}
				function pageAutoSubmit2(){
					if(parent.parent.CurrentActive && onceOK == true){
						onceOK = false;
						window.document.getElementById("formEvent").value = "AUTOSUBMIT";
						window.document.getElementsByTagName('form')[0].submit();
					}
				}
				
			</script>
		</html:form>
	</body>
</html>
