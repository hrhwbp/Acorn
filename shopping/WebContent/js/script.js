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

//관리자 모드=========================================
//관리자에서 고객회원 정보 수정
function memUpdate(id){
	//alert(id);
	document.updateFrm.id.value = id;
	document.updateFrm.submit();
}

function memDelete(id){
	//alert(id);
	if (confirm( id + "회원님을 정말 삭제하시겠습니까??") == true){    //확인	    
	    document.deleteFrm.id.value = id;
	    document.deleteFrm.submit();
	}else{   //취소
	    return;
	}
}

function memberUpdateAdmin(){
	document.updateFormAdmin.submit();
}

function memberUpdateCancelAdmin(){
	location.href = "membermanager.jsp";
}

//관리자에서 상품 처리시
function productDetail(no){
	//alert(no);
	document.detailFrm.no.value = no;
	document.detailFrm.submit();
}

function productUpdate(no){
	document.updateFrm.no.value = no;
	document.updateFrm.submit();
}

function productDelete(no){
	if(confirm("정말 삭제할까요?")){
		document.deleteFrm.no.value = no;
		document.deleteFrm.submit();		
	}
}
	
//장바구니에서의 처리

function cartUpdate(form){
	form.flag.value = "update";
	form.submit();
}

function cartDelete(form){
	form.flag.value = "del";
	form.submit();
}

function orderDetail(no){
	document.detailFrm.no.value = no;
	document.detailFrm.submit();	
}

// 관리자에서 주문 처리 시 
function orderUpdate(form){
	document.detailFrm.flag.value = "update";
	form.submit();
}

function orderDelete(form){
	document.detailFrm.flag.value = "delete";
	form.submit();
}










