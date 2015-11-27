function setMainCurrentActive() {
	if (!!window.ActiveXObject) {
		window.document.onfocusin = function() {
			CurrentActive = true;
		}
		window.document.onfocusout = function() {
			CurrentActive = false;
		}
	}
}

function myGet() {
	var cookieArr = document.cookie.split("; ");
	for (i = 0; i < cookieArr.length; i = i + 1) {
		if (myGet.arguments[0] == 1) {
			if (cookieArr[i].split("=")[0] == "leftTopHeight") {
				document.body.scrollTop = cookieArr[i].split("=")[1];
			}
		} else if (myGet.arguments[0] == 2) {
			if (cookieArr[i].split("=")[0] == "leftBottomHeight") {
				document.body.scrollTop = cookieArr[i].split("=")[1];
			}
		}
	}
}
function mySet() {
	var scrollHeight = document.body.scrollTop;
	if (mySet.arguments[0] == 1) {
		document.cookie = "leftTopHeight=" + scrollHeight;
	} else if (mySet.arguments[0] == 2) {
		document.cookie = "leftBottomHeight=" + scrollHeight;
	}
}
