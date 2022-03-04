//---------------------------- 상점명 수정 버튼 클릭시 이벤트 ------------------------------
function modifyNickname() {
	
	var nicknameBox = document.getElementById('nicknameBox');
	var originalName = $("#storeNickname").text();
	
	var nickname = document.getElementById('nickname');
	nickname.remove();
	
	var newStoreName = document.createElement("div");
    newStoreName.setAttribute("class", "newStoreName");
    newStoreName.setAttribute("id", "newStoreName");
    
	var newStoreNameText = document.createElement("input");
    newStoreNameText.setAttribute("id", "newStoreNameText");
    newStoreNameText.setAttribute("class", "newStoreNameText");
    newStoreNameText.setAttribute("type", "text");
    newStoreNameText.setAttribute("value", originalName); // <---여기에 기존 아이디값
    
    var newButton = document.createElement("button");
    
    newButton.setAttribute("class", "newNicknameButton");
    newButton.setAttribute("onclick","newNicknameClick()");
    newButton.textContent = '확인';
    
    var warnMsg = document.createElement("span")
    
    warnMsg.setAttribute("id", "warnMsg");
    warnMsg.setAttribute("class", "warnMsg");
    warnMsg.setAttribute("style", "color:#f00; padding-left:10px;");
    
    newStoreName.append(newStoreNameText);
    newStoreName.append(newButton);
    newStoreName.append(warnMsg);
    nicknameBox.append(newStoreName);
}
//-------------------------------- 상점명 이벤트 END --------------------------------------

//----------------------------- 닉네임 수정 후 Ajax 돌릴 때 ---------------------------------
function newNicknameClick(){
	
	var originName = $('#prNickname').text();
	var prBox = $('#prBox');
	var warnMsg = $('#warnMsg');
	var name = $('#newStoreNameText');
	
	if(name.val() == '') {
	
		warnMsg.html('닉네임을 입력해주세요');
		
	}else if(originName == name.val()) {
	
		warnMsg.html('이미 사용하고 있는 사용자 이름입니다');
		
	}else {
		
		var data = {newNickname : name.val()};
		
		$.ajax({

			type : 'put',
			url : '/mypage/newNickname',
			contentType : 'application/json; charset=UTF-8',
			data : JSON.stringify(data),
			success : function(data) {
				
				var nicknameBox = document.getElementById('nicknameBox');
	
				var newStoreName = document.getElementById('newStoreName');
				newStoreName.remove();
				
				var nickname = document.createElement("div");
			    nickname.setAttribute("class", "nickname");
			    nickname.setAttribute("id", "nickname");
			    
			    var span = document.createElement("span");
			    span.textContent = data;
			    
			    var prNickname = $('#prNickname');
			    prNickname.remove();
			    
			    var newPrNickname = document.createElement("h2");
			    newPrNickname.setAttribute("id", "prNickname");
			    newPrNickname.textContent = data;
			    
			    var newButton = document.createElement("button");
			    newButton.setAttribute("class", "modify_nickname");
			    newButton.setAttribute("id", "modifyStorename");
			    newButton.setAttribute("onclick","modifyNickname()");
			    newButton.textContent = '상점명 수정';
			    
			    prBox.append(newPrNickname);
			    nickname.append(span);
			    nickname.append(newButton);
			    nicknameBox.append(nickname);
		    
		},error : function(xhr,status,error) {
		
		      alert("에러");
		      
		}
		});
	}
} 
//--------------------------------- newNicknameClick END -----------------------------

//------------------------------소개글 수정버튼 클릭 이벤트 --------------------------------
function modifyIntro() {

	console.log("modifyIntro Module is.............")
	
	var introContainer = document.getElementById('introContainer');
	var originIntro = $('#originIntro').text();
	console.log(originIntro);
	
	var introBox = document.getElementById('introBox');
	introBox.remove();
	
	var newIntroBox = document.createElement('div')
	newIntroBox.setAttribute("class", "newIntroBox")
	newIntroBox.setAttribute("id", "newIntroBox")
	
	var textBox = document.createElement('div');
	textBox.setAttribute("class", "textBox");
	
	var textCount = document.createElement('span');
	textCount.setAttribute("class", "textCount");
	textCount.textContent = '0자';
	
	var textTotal = document.createElement('span');
	textTotal.setAttribute("class", "textTotal");
	textTotal.textContent = '/100자';
	
	var introTextArea = document.createElement('textarea');
	introTextArea.setAttribute("class", "introTextArea");
	introTextArea.setAttribute("id", "introTextArea");
	introTextArea.textContent = originIntro;
	
	var newButton = document.createElement('button');
	newButton.setAttribute("class", "introOkButton");
	newButton.setAttribute("id", "introCheckButton");
	newButton.setAttribute("onclick", "newIntroCheck()");
	newButton.textContent = '확인';
	
	introContainer.append(newIntroBox);
	newIntroBox.append(textBox);
	textBox.append(textCount);
	textBox.append(textTotal);
	newIntroBox.append(introTextArea);
	newIntroBox.append(newButton);
	
	$('#introTextArea').keyup(function(e) {
	
		let content = $(this).val();
		
		if(content.length == 0 || content == '') {
			$('.textCount').text('0자');
		}else {
			$('.textCount').text(content.length + '자');
		}
		
		if(content.length > 100) {
			$(this).val($(this).val().substring(0, 100));
			alert('글자수는 100자까지 입력 가능합니다.'); 
		}; 
		
		var str = $(this).val();
		var str_arr = str.split("\n");
		var row = str_arr.length;

		if(row > 3) {
			alert("3줄 이상 입력할 수 없습니다.")
		
			var lastChar = str.slice(0, -1);
		
			$("this").val(lastChar)
		};
	});
}
//-------------------------------- modifyIntro END ------------------------------------

//-------------------------------수정확인 버튼클릭 이벤트-------------------------------------
function newIntroCheck() {

	console.log("newIntroCheck Module is.............")
	
	var introContainer = $('#introContainer');
	var newText = $('#introTextArea').val();
	
	var data = {"text" : newText};
	console.log(data);
	
	$.ajax({
		type : 'put',
		url : '/mypage/newIntro',
		data : JSON.stringify(data),
		contentType : 'application/json; charset=utf-8',
		success : function(data) {
		
		var newIntroBox = $('#newIntroBox');
		newIntroBox.remove();
		
		var introBox = document.createElement('div');
		introBox.setAttribute("class", "introBox");
		introBox.setAttribute("id", "introBox");
		
		var intro_text2 = document.createElement('div');
		intro_text2.setAttribute("class", "intro_text2");
		intro_text2.setAttribute("id", "intro_text");
		
		var p = document.createElement('p');
		p.setAttribute("id", "originIntro");
		p.textContent = data;
		
		var intro_btn = document.createElement('div');
		intro_btn.setAttribute("class", "intro_btn");
		intro_btn.setAttribute("id", "intro_btn");
		
		var intro_btn2 = document.createElement('button');
		intro_btn2.setAttribute("class", "intro_btn2");
		intro_btn2.setAttribute("id", "intro_btn2");
		intro_btn2.setAttribute("onclick", "modifyIntro()");
		intro_btn2.textContent = '소개글 수정';
		
		introContainer.append(introBox)
		introBox.append(intro_text2);
		introBox.append(intro_btn);
		intro_text2.append(p);
		intro_btn.append(intro_btn2);
		
		},error : function(xhr,status,error) {
		
		      alert("에러");
		      
		}
	});
}
//------------------------------- newIntroCheck END --------------------------------------

//-------------------------------- 상점오픈일 계산 ----------------------------------------
$(function() {
	
	var value = $("#openDay").val();
	var todayValue = $("#storeTimeValue")
	
	const today = new Date(); // 오늘날짜
	const timeValue = new Date(value); // 가입날짜
	
	const betweenTime = Math.floor((today.getTime() - timeValue.getTime()) / 1000 / 60);
	const betweenTimeHour = Math.floor(betweenTime / 60);
	const betweenTimeDay =  Math.floor(betweenTime / 60 / 24);

    if (betweenTime < 1){ 
    
    	todayValue.html('방금 전');
    	
    }else if(betweenTime < 60) {
    	
    	todayValue.html(betweenTime+"분 전");
       
    }else if(betweenTimeHour < 24) {
   	 
   	 	todayValue.html(betweenTimeHour+"시간 전");
    
    }else if (betweenTimeDay < 365) {
    	
        todayValue.html(betweenTimeDay+"일 전");
        
    }else {
    
    	todayValue.html(Math.floor(betweenTimeDay / 365) +"년")
    
    };
})
//-------------------------------- 상점오픈일 END -------------------------------

//---------------------------- 문의등록 날짜 계산 ---------------------------------
$(function() {

	$('#faqTextarea').keyup(function(e) {
	
		let content = $(this).val();
		
		if(content.length == 0 || content == '') {
			$('.faqContentCheck').text('0자');
		}else {
			$('.faqContentCheck').text(content.length + '자');
		}
		
		if(content.length > 100) {
			$(this).val($(this).val().substring(0, 100));
			alert('글자수는 100자까지 입력 가능합니다.'); 
		}; 
		
		var str = $(this).val();
		var str_arr = str.split("\n");
		var row = str_arr.length;

		if(row > 3) {
			alert("3줄 이상 입력할 수 없습니다.")
		
			var lastChar = str.slice(0, -1);
		
			$("this").val(lastChar)
		};
	});
	
	

})
//-------------------------------------------------------------------------
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	