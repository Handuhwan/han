<<<<<<< HEAD
$(function(){
   var date = new Date();
   
   var time= Date().substring(0,21);
   var mm= date.getMonth();
   var dd = date.getDate();
   
   var yy = date.getFullYear();
   var h = date.getHours();
   var min =date.getMinutes();
   
   var m = new Array("January","February","March","April","May","June","July","August", "September","October","November","December");
    
   
   var ampm =h; 
   
   if(h<12){
      ampm="AM";
   }
   else{
      ampm="PM";
   }
   
    var thistime = m[mm]+" "+dd+"th "+yy+" "+h+":"+min+" "+ampm;
    
    
    $("#now").text(thistime);

})



=======
$(function(){
   var date = new Date();
   
   var time= Date().substring(0,21);
   var mm= date.getMonth();
   var dd = date.getDate();
   
   var yy = date.getFullYear();
   var h = date.getHours();
   var min =date.getMinutes();
   
   var m = new Array("January","February","March","April","May","June","July","August", "September","October","November","December");
    
   
   var ampm =h; 
   
   if(h<12){
      ampm="AM";
   }
   else{
      ampm="PM";
   }
   
    var thistime = m[mm]+" "+dd+"th "+yy+" "+h+":"+min+" "+ampm;
    
    
    $("#now").text(thistime);

})



>>>>>>> branch 'master' of https://github.com/Handuhwan/han.git
