//고객님 주소 입력시
function zipCheck(){
	url = "zipcheck.jsp?check=y";
	
	window.open(url, "zip", "toolbar = no, width = 350, height = 350, top = 200, left = 300, status = yes, scrollbars = yes, menubar = no");
}
//가입시 ID 입력확인
function idCheck(){
	
	if(regForm.id.value === ""){
		alert("아이디를 입력해주세요");
		regForm.id.focus();
	}else{
		url = "idcheck.jsp?id=" + regForm.id.value;
		window.open(url, "id", "width = 300, height = 150, top = 150, left = 150");
	}	
}

//입력자료 오류 검사후 submit
function inputCheck(){
	//입력자료 오류 검사 
	document.regForm.submit();
}

//쇼핑몰 로그인 후 고객님 정보 수정시
function memberUpdate(){
	//입력자료 오류 검사 (생략)
	document.updateForm.submit();
}

//쇼핑물 로그인 후 고객정보 수정메뉴에서 수정취소
function memberUpdateCancel(){	
	location.href = "../guest/guest_index.jsp";
}

function memberDelete(){
	alert("정말로 탈퇴하시겠습니까?");
}







