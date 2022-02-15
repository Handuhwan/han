$(function(){
	var date = new Date();
	   
	   var mm= date.getMonth();
	   var dd = date.getDate();
	   var yy = date.getFullYear();
	   var h = date.getHours();
	   var min =date.getMinutes();
	  

	   if(min<10){
	   	min = "0"+min;
	   }
	   
	   
	   var m = new Array("January","February","March","April","May","June","July","August", "September","October","November","December");
	   var ampm =h; 
	   
	   
	   if(h<12){
	      ampm="AM";
	   }
	   else{
	      ampm="PM";
	   }
	   
	   
	    var thistime = m[mm]+" "+dd+"th "+yy+" "+h+":"+min+" "+ampm;
	    // m 배열도 0번째방부터 시작, Date함수의 month도 0번째 방부터 시작
	    
	    $("#now").text(thistime);
		
})


		
	setInterval(function(){
		var date = new Date();
	   
	   var mm= date.getMonth();
	   var dd = date.getDate();
	   var yy = date.getFullYear();
	   var h = date.getHours();
	   var min =date.getMinutes();
	  

	   if(min<10){
	   	min = "0"+min;
	   }
	   
	   
	   var m = new Array("January","February","March","April","May","June","July","August", "September","October","November","December");
	   var ampm =h; 
	   
	   
	   if(h<12){
	      ampm="AM";
	   }
	   else{
	      ampm="PM";
	   }
	   
	   
	    var thistime = m[mm]+" "+dd+"th "+yy+" "+h+":"+min+" "+ampm;
	    // m 배열도 0번째방부터 시작, Date함수의 month도 0번째 방부터 시작
	    
	    $("#now").text(thistime);
		
		 
		 },1000);
	


