function search() {
	if (frm2.developer.value.length == 0) {
		alert("회사 이름이 입력되지 않았습니다!");
		frm2.developer.focus();
		return false;
	}
	else
		document.frm2.submit();
	return true;
}

function search2() {
	if (frm.cust_name.value.length == 0) {
		alert("회원 이름이 입력되지 않았습니다!");
		frm.cust_name.focus();
		return false;
	}
	else
		document.frm2.submit();
	return true;
}

function home() {
	window.location = 'index.jsp';
}
