//register.html
$(document).on("pageinit",function(){
	$('#companyname').attr('placeholder','2-12位，只能使用汉字 例：某某货站');
	$('#username').attr('placeholder','2-8位，推荐本人姓名，方便记忆');
	$('#password').attr('placeholder','6-8位');
	$('#passwordConfirm').attr('placeholder','与密码填写一致');
	$('#realname').attr('placeholder','请与身份证保持一致');
	$('#shenfenid').attr('placeholder','请填写身份证号');
	$('#address').attr('placeholder','请输入详细地址');
	$('#mobile').attr('placeholder','请输入手机号，只能为数字');
	$('#telephone').attr('placeholder','请输入区号与电话号，11-12位数字');

	// 取省1的数据
	var sheng1 = window.document.getElementById("sheng1");
	window.document.getElementById("formEvent").value = "INIT";
	// 画面加载时，如果省1的数据据空,则自动提交到后台
	if (window.document.getElementById("sheng1").value == "") {
		$.post("/moRegister.do?formEvent=INIT1" + "&" + "timestamp=" + (new Date()).valueOf(), null, callbackForSheng);
		$.post("/moRegister.do?formEvent=INIT2" + "&" + "timestamp=" + (new Date()).valueOf(), null, callbackForShi);
	}

});	

function callbackForSheng(data) {
	var resultObj = $("#sheng1");
	resultObj.html(data);
	resultObj.selectmenu('refresh');
}
function callbackForShi(data) {
	var resultObj = $("#shi1");
	resultObj.html(data);
	resultObj.selectmenu('refresh');
}


$(document).on("pageinit",function(){
	$('#sheng1').change(function(){
	var sheng1=$(this).children('option:selected').val();//这就是selected的值 
	var formEvent = "SHENG1CHANGE";
	// 不使用get方法，get方法在URL相同的情况，将不会重新提交，而post方法则会提交，或者给URL附加系统时间也可以
	$.post("/moRegister.do?sheng1=" + sheng1 + "&" + "formEvent=" + formEvent, null, callback);
	}) 
}); 

function callback(data) {
	var resultObj = $("#shi1");
	resultObj.html(data);
	resultObj.selectmenu('refresh');
}
	


$.extend({companyname:function(){
	
	window.document.getElementById('formEvent').value = "TEST";
	window.document.getElementById('currentElement').value = "companyname";
	$.ajax( {
		type : "POST",
		url : "/moRegister.do",
		// 处理注册信息
		data : $("form#moRegisterForm").serialize(),
		dataType : "text",
		success : function(data, textStatus) {
			$("#companynameError").html(data);
		}
	});
	
}});

$.extend({username:function(){

	window.document.getElementById('formEvent').value = "TEST";
	window.document.getElementById('currentElement').value = "username";
	$.ajax( {
		type : "POST",
		url : "/moRegister.do",
		// 处理注册信息
		data : $("form#moRegisterForm").serialize(),
		dataType : "text",
		success : function(data, textStatus) {
		$("#usernameError").html(data);
	}
	});

}});

$.extend({address:function(){

	window.document.getElementById('formEvent').value = "TEST";
	window.document.getElementById('currentElement').value = "address";
	$.ajax( {
		type : "POST",
		url : "/moRegister.do",
		// 处理注册信息
		data : $("form#moRegisterForm").serialize(),
		dataType : "text",
		success : function(data, textStatus) {
		$("#addressError").html(data);
	}
	});

}});

$.extend({realname:function(){

	window.document.getElementById('formEvent').value = "TEST";
	window.document.getElementById('currentElement').value = "realname";
	$.ajax( {
		type : "POST",
		url : "/moRegister.do",
		// 处理注册信息
		data : $("form#moRegisterForm").serialize(),
		dataType : "text",
		success : function(data, textStatus) {
		$("#realnameError").html(data);
	}
	});

}});

$.extend({shenfenid:function(){

	window.document.getElementById('formEvent').value = "TEST";
	window.document.getElementById('currentElement').value = "shenfenid";
	$.ajax( {
		type : "POST",
		url : "/moRegister.do",
		// 处理注册信息
		data : $("form#moRegisterForm").serialize(),
		dataType : "text",
		success : function(data, textStatus) {
		$("#shenfenidError").html(data);
	}
	});

}});

$.extend({sheng1:function(){

	window.document.getElementById('formEvent').value = "TEST";
	window.document.getElementById('currentElement').value = "sheng1";
	$.ajax( {
		type : "POST",
		url : "/moRegister.do",
		// 处理注册信息
		data : $("form#moRegisterForm").serialize(),
		dataType : "text",
		success : function(data, textStatus) {
		$("#sheng1Error").html(data);
	}
	});

}});

$.extend({shi1:function(){

	window.document.getElementById('formEvent').value = "TEST";
	window.document.getElementById('currentElement').value = "shi1";
	$.ajax( {
		type : "POST",
		url : "/moRegister.do",
		// 处理注册信息
		data : $("form#moRegisterForm").serialize(),
		dataType : "text",
		success : function(data, textStatus) {
		$("#shi1Error").html(data);
	}
	});

}});

$.extend({password:function(){

	window.document.getElementById('formEvent').value = "TEST";
	window.document.getElementById('currentElement').value = "password";
	$.ajax( {
		type : "POST",
		url : "/moRegister.do",
		// 处理注册信息
		data : $("form#moRegisterForm").serialize(),
		dataType : "text",
		success : function(data, textStatus) {
		$("#passwordError").html(data);
	}
	});

}});

$.extend({passwordConfirm:function(){

	window.document.getElementById('formEvent').value = "TEST";
	window.document.getElementById('currentElement').value = "passwordConfirm";
	$.ajax( {
		type : "POST",
		url : "/moRegister.do",
		// 处理注册信息
		data : $("form#moRegisterForm").serialize(),
		dataType : "text",
		success : function(data, textStatus) {
		$("#passwordConfirmError").html(data);
	}
	});

}});

$.extend({telephone:function(){

	window.document.getElementById('formEvent').value = "TEST";
	window.document.getElementById('currentElement').value = "telephone";
	$.ajax( {
		type : "POST",
		url : "/moRegister.do",
		// 处理注册信息
		data : $("form#moRegisterForm").serialize(),
		dataType : "text",
		success : function(data, textStatus) {
		$("#telephoneError").html(data);
	}
	});

}});

$.extend({mobilezzz:function(){

	window.document.getElementById('formEvent').value = "TEST";
	window.document.getElementById('currentElement').value = "mobile";
	$.ajax( {
		type : "POST",
		url : "/moRegister.do",
		// 处理注册信息
		data : $("form#moRegisterForm").serialize(),
		dataType : "text",
		success : function(data, textStatus) {
		$("#mobileError").html(data);
	}
	});

}});


jQuery(document).ready( function() {
	// 公司名
	$("#companyname").bind("blur", function() {$.companyname();});
	
	// 公司名
	$("#username").bind("blur", function() {$.username();});
	
	// 公司名
	$("#address").bind("blur", function() {$.address();});
	
	// 公司名
	$("#realname").bind("blur", function() {$.realname();});
	
	// 公司名
	$("#shenfenid").bind("blur", function() {$.shenfenid();});
	
	// 公司名
	$("#sheng1").bind("blur", function() {$.sheng1();});
	
	// 公司名
	$("#shi1").bind("blur", function() {$.shi1();});
	
	// 公司名
	$("#password").bind("blur", function() {$.password();});
	
	// 公司名
	$("#passwordConfirm").bind("blur", function() {$.passwordConfirm();});
	
	// 公司名
	$("#telephone").bind("blur", function() {$.telephone();});
	
	// 公司名
	$("#mobile").bind("blur", function() {$.mobilezzz();});
	
});

jQuery(document).ready( function() {
	$('#mySubmit').click(function(){

		window.document.getElementById('formEvent').value = "REGISTER";
		$.ajax( {
			type : "POST",
			url : "/moRegister.do",
			// 处理注册信息
			data : $("form#moRegisterForm").serialize(),
			dataType : "text",
			success : function(data, textStatus) {
			
			var result=eval("("+data+")");
			if(result.result=="SUCCESS"){
				$.mobile.changePage ($('#registSuccess'), 'slideup', false, false);
				$("#usernameRsp").html(result.username);
			}else{ 
				$("#companynameError").html(result.companyname);
				$("#usernameError").html(result.username);
				$("#passwordError").html(result.password);
				$("#passwordConfirmError").html(result.passwordConfirm);
				$("#realnameError").html(result.realname);
				$("#shenfenidError").html(result.shenfenid);
				$("#sheng1Error").html(result.sheng1);
				$("#shi1Error").html(result.shi1);
				$("#addressError").html(result.address);
				$("#mobileError").html(result.mobile);
				$("#telephoneError").html(result.telephone);
				$("#otherInfoError").html(result.otherInfo);
			}
			
			}
		});

	}) 
});

$(document).on("pageshow","#regist",function(){ // 当进入页面二时
	$("#companynameError").html("");
	$("#companyname").val("");
	$("#usernameError").html("");
	$("#username").val("");
	$("#passwordError").html("");
	$("#password").val("");
	$("#passwordConfirmError").html("");
	$("#passwordConfirm").val("");
	$("#realnameError").html("");
	$("#realname").val("");
	$("#shenfenidError").html("");
	$("#shenfenid").val("");

	$("#sheng1Error").html("");
	$("#shi1Error").html("");

	$.post("/moRegister.do?formEvent=INIT1" + "&" + "timestamp=" + (new Date()).valueOf(), null, callbackForSheng);
	$.post("/moRegister.do?formEvent=INIT2" + "&" + "timestamp=" + (new Date()).valueOf(), null, callbackForShi);
	

	$("#shi1").selectmenu('refresh');
	$("#addressError").html("");
	$("#address").val("");
	$("#mobileError").html("");
	$("#mobile").val("");
	$("#telephoneError").html("");
	$("#telephone").val("");
	$("#otherInfoError").html("");
	
});