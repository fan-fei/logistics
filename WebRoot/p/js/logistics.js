//main.jsp
function rightBeanSubmit() {

	window.document.getElementById("formEvent").value = rightBeanSubmit.arguments[1];

	// 画面加载时，如果省1的数据据空,则自动提交到后台
	if (window.document.getElementById("formEvent").value == "SHENGLOAD"
			&& window.document.getElementById("sheng1").value == "") {
		var form = window.document.getElementsByTagName("form")[0];
		form.action = rightBeanSubmit.arguments[0];
		form.submit();
	}

	// 如果省1的数据不为空，则表示不是初始加载
	else if (window.document.getElementById("formEvent").value == "SHENG1CHANGE"
			|| window.document.getElementById("formEvent").value == "SHENG2CHANGE"
			|| window.document.getElementById("formEvent").value == "SHENG3CHANGE"
			|| window.document.getElementById("formEvent").value == "SHI1CHANGE"
			|| window.document.getElementById("formEvent").value == "SHI2CHANGE"
			|| window.document.getElementById("formEvent").value == "SHI3CHANGE") {
		var form = window.document.getElementsByTagName("form")[0];
		form.action = rightBeanSubmit.arguments[0];
		form.submit();
	}
}

function topBeanSubmit() {

	window.document.getElementById("formEvent").value = topBeanSubmit.arguments[1];
	var form = window.document.getElementsByTagName("form")[0];
	form.action = topBeanSubmit.arguments[0];
	form.submit();
}

function leftBottomBeanSubmit() {

	window.document.getElementById("formEvent").value = leftBottomBeanSubmit.arguments[1];

	// 点击省时 点击市时
	if (window.document.getElementById("formEvent").value == "SHENGCLICK"
			|| window.document.getElementById("formEvent").value == "SHICLICK") {
		var form = window.document.getElementsByTagName("form")[0];
		form.action = leftBottomBeanSubmit.arguments[0];
		form.submit();
	}

	// 点击 添加市 时
	if (window.document.getElementById("formEvent").value == "ADDSHI") {
		if (window.document.getElementById("shi").value == "") {
			alert("请先选择市。");
		} else {
			var form = window.document.getElementsByTagName("form")[0];
			form.action = leftBottomBeanSubmit.arguments[0];
			form.submit();
		}
	}
	// 点击 添加县 时
	if (window.document.getElementById("formEvent").value == "ADDXIAN") {
		if (window.document.getElementById("xian").value == "") {
			alert("请先选择县。");
		} else {
			var form = window.document.getElementsByTagName("form")[0];
			form.action = leftBottomBeanSubmit.arguments[0];
			form.submit();
		}
	}
	// 点击 所有市 时
	if (window.document.getElementById("formEvent").value == "ALLSHI") {
		if (window.document.getElementById("sheng").value == "") {
			alert("请先选择省。");
		} else {
			var form = window.document.getElementsByTagName("form")[0];
			form.action = leftBottomBeanSubmit.arguments[0];
			form.submit();
		}
	}
	// 点击 所有县 时
	if (window.document.getElementById("formEvent").value == "ALLXIAN") {
		if (window.document.getElementById("shi").value == "") {
			alert("请先选择市。");
		} else {
			var form = window.document.getElementsByTagName("form")[0];
			form.action = leftBottomBeanSubmit.arguments[0];
			form.submit();
		}
	}
	// 点击 清空 时
	if (window.document.getElementById("formEvent").value == "CLEAR") {
		var form = window.document.getElementsByTagName("form")[0];
		form.action = leftBottomBeanSubmit.arguments[0];
		form.submit();
	}
	// 双击 省 时
	if (window.document.getElementById("formEvent").value == "SHENGDBLCLICK"
			&& window.document.getElementById("sheng").value != "") {
		var form = window.document.getElementsByTagName("form")[0];
		form.action = leftBottomBeanSubmit.arguments[0];
		form.submit();
	}
	// 双击 市 时
	if (window.document.getElementById("formEvent").value == "SHIDBLCLICK"
			&& window.document.getElementById("shi").value != "") {
		var form = window.document.getElementsByTagName("form")[0];
		form.action = leftBottomBeanSubmit.arguments[0];
		form.submit();
	}
	// 双击 县 时
	if (window.document.getElementById("formEvent").value == "XIANDBLCLICK"
			&& window.document.getElementById("xian").value != "") {
		var form = window.document.getElementsByTagName("form")[0];
		form.action = leftBottomBeanSubmit.arguments[0];
		form.submit();
	}
	// 双击 关键字 时
	if (window.document.getElementById("formEvent").value == "KEYSTRINGDBLCLICK"
			&& window.document.getElementById("keyString").value != "") {
		var form = window.document.getElementsByTagName("form")[0];
		form.action = leftBottomBeanSubmit.arguments[0];
		form.submit();
	}
	// 点击 添加 时
	if (window.document.getElementById("formEvent").value == "ADDSEARCHSTRING") {
		window.document.getElementById("searchString").value = window.document
				.getElementById("searchString").value.replace(
				/^(\s|　)+|(\s|　)+$/g, '');
		if (window.document.getElementById("searchString").value == "") {
			alert("请先输入关键字再点击添加。");
		} else {
			var form = window.document.getElementsByTagName("form")[0];
			form.action = leftBottomBeanSubmit.arguments[0];
			form.submit();
		}
	}
	// 点击 搜索 时
	if (window.document.getElementById("formEvent").value == "QUERY") {
		if (window.document.getElementById("keyListEmptyFlag").value == "EMPTY") {
			alert("请先添加关键字再点击搜索。");
		} else {
			var form = window.document.getElementsByTagName("form")[0];
			form.action = leftBottomBeanSubmit.arguments[0];
			form.submit();
		}
	}
	// 自动提交 时
	if (window.document.getElementById("formEvent").value == "AUTOSUBMIT") {
		var form = window.document.getElementsByTagName("form")[0];
		form.action = leftBottomBeanSubmit.arguments[0];
		form.submit();
	}
}

function customize_close() {
	if (confirm("您确定要关闭本页吗？")) {
		window.opener = null;
		window.open('', '_self');
		window.close();
	}
}
function logo_click_top() {
	window.open('/p/form/main.jsp', '_top');
}
function logo_click_self() {
	window.open('/p/form/main.jsp', '_self');
}


//register.jsp

function sheng1Change() {
	var jqueryObj = $("#sheng1");
	var sheng1 = jqueryObj.val();
	var formEvent = "SHENG1CHANGE";
	// 不使用get方法，get方法在URL相同的情况，将不会重新提交，而post方法则会提交，或者给URL附加系统时间也可以
	$.post("/register.do?sheng1=" + sheng1 + "&" + "formEvent=" + formEvent,
			null, callback);
}

function callback(data) {
	var resultObj = $("#shi1");
	resultObj.html(data);
}

function imgcodeChange() {
	window.document.getElementById("formEvent").value="IMGCODECHANGE";
 	$("#imgcoderesult").attr("src","/register.do?formEvent=IMGCODECHANGE" + "&" + "timestamp=" + (new Date()).valueOf());
}

function registerFormOnload() {

	// 取省1的数据
	var sheng1 = window.document.getElementById("sheng1");
	window.document.getElementById("formEvent").value = registerFormOnload.arguments[1];
	// 画面加载时，如果省1的数据据空,则自动提交到后台
	if (window.document.getElementById("sheng1").value == "") {
		$.post("/register.do?formEvent=INIT1" + "&" + "timestamp=" + (new Date()).valueOf(), null, callback1);
		$.post("/register.do?formEvent=INIT2" + "&" + "timestamp=" + (new Date()).valueOf(), null, callback2);
	}
	$.post("/register.do?formEvent=GETKEFUPHONE" + "&" + "timestamp=" + (new Date()).valueOf(), null, callback3);
	$("#imgcoderesult").attr("src","/register.do?formEvent=IMGCODECHANGE" + "&" + "timestamp=" + (new Date()).valueOf());
}

function callback1(data) {
	var resultObj = $("#sheng1");
	resultObj.html(data);
}
function callback2(data) {
	var resultObj = $("#shi1");
	resultObj.html(data);
}
function callback3(data) {
	self.status="您是本站第" +data.substring(data.indexOf("****")+4) +"位访问者!";
	var resultObj = $("#kefuphone");
	resultObj.html(data.substring(0,data.indexOf("****")));
	
}

