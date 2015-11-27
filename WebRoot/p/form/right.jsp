<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<html>
	<head>
		<script type="text/javascript" src="/p/js/logistics.js"></script>
	</head>
	<body onload="rightBeanSubmit('/main.do','SHENGLOAD')" style="background-image: url('/p/image/bg1.jpg'); background-repeat: no-repeat;">
		<html:form action="/main.do" target="_top">
			<html:select property="rightBean.sheng1" styleId="sheng1" onchange="rightBeanSubmit('/main.do','SHENG1CHANGE')" style="width:70px">
				<html:optionsCollection property="rightBean.shengList1" label="name" value="id" />
			</html:select>
			<br />
			<html:select property="rightBean.shi1" onchange="rightBeanSubmit('/main.do','SHI1CHANGE')" style="width:70px">
				<html:option value=""></html:option>
				<html:optionsCollection property="rightBean.shiList1" label="name" value="id" />
			</html:select>
			<br />
			<br />
			<html:select property="rightBean.sheng2" onchange="rightBeanSubmit('/main.do','SHENG2CHANGE')" style="width:70px">
				<html:optionsCollection property="rightBean.shengList2" label="name" value="id" />
			</html:select>
			<br />
			<html:select property="rightBean.shi2" onchange="rightBeanSubmit('/main.do','SHI2CHANGE')" style="width:70px">
				<html:option value=""></html:option>
				<html:optionsCollection property="rightBean.shiList2" label="name" value="id" />
			</html:select>
			<br />
			<br />
			<html:select property="rightBean.sheng3" onchange="rightBeanSubmit('/main.do','SHENG3CHANGE')" style="width:70px">
				<html:optionsCollection property="rightBean.shengList3" label="name" value="id" />
			</html:select>
			<br />
			<html:select property="rightBean.shi3" onchange="rightBeanSubmit('/main.do','SHI3CHANGE')" style="width:70px">
				<html:option value=""></html:option>
				<html:optionsCollection property="rightBean.shiList3" label="name" value="id" />
			</html:select>
			<html:hidden property="formEvent" styleId="formEvent" />
			<html:hidden property="openCloseFlag" styleId="openCloseFlag" />
			<br />
			<br />
			<br />
			<br />
			<table style="font-size: 14">
				<tr>
					<td>
						<a onclick="window.open(this.href, '_blank');return false;" href="http://app.baidu.com/app/enter?appid=116526">计算器</a>
					</td>
				</tr>
				<tr>
					<td>
						<a onclick="window.open(this.href, '_blank');return false;" href="http://www.hao123.com/rili">万年历</a>
					</td>
				</tr>
				<tr>
					<td>
						<a onclick="window.open(this.href, '_blank');return false;" href="http://map.baidu.com/">电子地图</a>
					</td>
				</tr>
				<tr>
					<td>
						<a onclick="window.open(this.href, '_blank');return false;" href="http://www.hao123.com/tianqi">天气预报</a>
					</td>
				</tr>
				<tr>
					<td>
						<a onclick="window.open(this.href, '_blank');return false;" href="http://app.jxedt.com/chepai/">车牌号查询</a>
					</td>
				</tr>
				<tr>
					<td>
						<a onclick="window.open(this.href, '_blank');return false;" href="http://www.hao123.com/sjhmcx">手机号查询</a>
					</td>
				</tr>
				<tr>
					<td>
						<a onclick="window.open(this.href, '_blank');return false;" href="http://qq.ip138.com/idsearch/">身份证查询</a>
					</td>
				</tr>
			</table>
			<br />
			<br />
			<table style="font-size: 14">
				<tr>
					<td>
						<a href="/download/logistics.zip">下载客户端</a>
					</td>
				</tr>
			</table>
		</html:form>
	</body>
</html>
