var replyService = (function() {
   
   function add(reply, callback, error) {
	
	 console.log("add reply....");

      $.ajax({
         type : 'post',
         url : '/faq/new',
         data : JSON.stringify(reply),
         contentType : "application/json; charset=utf-8",
         success : function(result, status, xhr) {
         if (callback) {
            callback(result);
            }
         },error : function(xhr, status, er) {
         if (error) {
            error(er);
            }
         }
      })
   
   console.log("reply add..........");
   }
   
	function getList(param, callback, error) {
	 
   		var id = param.id;
   		
   		$.getJSON("/faq/pages/"+id+".json", function(data){
   			if(callback) {
   				callback(data);
   			}
   			
   		}).fail(function(xhr, status, err){
   			alert("FAQ ERROR");
   		});
   
   
	console.log("getList...");

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
    	add:add,
    	getList:getList,
    	remove:remove
    };
    
})();