function setCookie(name, value, exp) {
	var date = new Date();
	date.setTime(date.getTime() + exp*24*60*60*1000);
	
	document.cookie = name + '=' + value + ';expires=' + date.toUTCString() + ';path=/';
	
	
};



function itemcookie(itemnum){ //최근본상품

	
	setCookie(itemnum,itemnum,1);
	
	
}


$(function(){
	
	console.log(document.cookie);
	
})
