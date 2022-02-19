//---------------------------- 상점명 수정 버튼 클릭시 이벤트 ------------------------------
function modifyNickname() {
	
	var nicknameBox = document.getElementById('nicknameBox');
	
	var nickname = document.getElementById('nickname');
	nickname.remove();
	
	var newStoreName = document.createElement("div");
    newStoreName.setAttribute("class", "newStoreName");
    newStoreName.setAttribute("id", "newStoreName");
    
	var newStoreNameText = document.createElement("input");
    newStoreNameText.setAttribute("id", "newStoreNameText");
    newStoreNameText.setAttribute("class", "newStoreNameText");
    newStoreNameText.setAttribute("type", "text");
    newStoreNameText.setAttribute("value", "코딩스토어"); // <---여기에 기존 아이디값
    
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

	var warnMsg = $('#warnMsg');
	var name = $('#newStoreNameText');
	
	if(name.val() == '') {
	
		warnMsg.html('닉네임을 입력해주세요');
		
	}else {
		
		var data = {nickname : name.val()};
		
		$.ajax({

			type : 'post',
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
			    
			    var newButton = document.createElement("button");
			    
			    newButton.setAttribute("class", "modify_nickname");
			    newButton.setAttribute("id", "modifyStorename");
			    newButton.setAttribute("onclick","modifyNickname()");
			    newButton.textContent = '상점명 수정';
			    
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
	
	var introContainer = document.getElementById('introContainer');
	
	var introBox = document.getElementById('introBox');
	introBox.remove();
	
	var newIntroBox = document.createElement('div')
	newIntroBox.setAttribute("class", "newIntroBox")
	newIntroBox.setAttribute("id", "newIntroBox")
	
	var introTextArea = document.createElement('textarea');
	introTextArea.setAttribute("class", "introTextArea");
	introTextArea.setAttribute("id", "introTextArea");
	
	var newButton = document.createElement('button');
	newButton.setAttribute("class", "introOkButton");
	newButton.setAttribute("id", "introCheckButton");
	newButton.setAttribute("onclick", "newIntroCheck");
	newButton.textContent = '확인';
	
	introContainer.append(newIntroBox);
	newIntroBox.append(introTextArea);
	newIntroBox.append(newButton);
}
//-------------------------------- modifyIntro END ------------------------------------

//-------------------------------수정확인 버튼클릭 이벤트-------------------------------------
function newIntroCheck() {
	
	var introTextArea = $('#introTextArea');
	var newText = introTextArea.value();
	console.log(newText);
	
	var data = {"text" : newText};
	
	$.ajax({
	
		type : 'post',
		url : '/mypage/newIntro',
		contentType : 'application/json; charset = UTF-8',
		data : JSON.stringify(data),
		success : function(data) {
		
			var introBox = document.createElement('div');
			introBox.setAttribute("class", "introBox");
			introBox.setAttribute("id", "introBox");
			
			var intro_text = document.createElement('div');
			intro_text.setAttribute("class", "intro_text");
			intro_text.setAttribute("id", "intro_text");
			
			var p = document.createElement('p');
			p.textContent = data;
			
			var intro_btn = document.createElement('div');
			intro_btn.setAttribute("class", "intro_btn");
			intro_btn.setAttribute("id", "intro_btn");
			
			var intro_btn2 = document.createElement('button');
			intro_btn2.setAttribute("class", "intro_btn2");
			intro_btn2.setAttribute("id", "intro_btn2");
			intro_btn2.setAttribute("onclick", "modifyIntro()");
			intro_btn2.textContent = '소개글 수정';
			
			introBox.append(intro_text);
			introBox.append(intro_btn);
			intro_text.append(p);
			intro_btn.append(intro_btn2);
		
		},error : function(xhr,status,error) {
		
		      alert("에러");
		      
		}
	});
}
//------------------------------- newIntroCheck END --------------------------------------
















































