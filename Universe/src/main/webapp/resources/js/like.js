var likeService = (function() {
   
	function likeList(param, callback, error) {
	 
   		var id = param.id;
   		var page = param.page;
   		
   		$.getJSON("/faq/pages/"+id+"/"+page+".json", function(data){
   			if(callback) {
   				callback(data);
   			}
   			
   		}).fail(function(xhr, status, err){
   			
   		});
   
   
	console.log("likeList...");

	}
	
	function remove(qno, callback, error) {
		
		$.ajax ({
			type:"delete",
			url:"/faq/"+qno,
			data:JSON.stringify({ qno:qno }),
			contentType:"application/json; charset=utf-8",
			success:function(result, status, xhr) {
				if(callback){
					callback(result);
				}
			},error(xhr, status, er) {
				if(error){
					console.log(er);
				}
			}
		})
		
	console.log("remove.......");
	}
	
	
   
    return {
    	likeList:likeList,
    	remove:remove
    };
    
})();