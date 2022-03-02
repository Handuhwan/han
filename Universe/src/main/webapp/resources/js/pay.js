


	
$(function(){

	$("#mypayorder").on("click",function(){
	
	$("#mypayplus").val("");
	$("#mypayplus").css("border","1px solid");
	$("#mypayplus").css("background","#e8e8e8");
	$('#mypayplus').attr("disabled",false);
	$("#mypayorder").attr("id","check_module");
	$("#mypagepaybtn").css("display","none")
	$("#realmypagepaybtn").css("display","inline")
	
}) //onclick end

})//function end
