/**
 * 
 */

function goPage(pageNumber){
	var curPageObj = $("#curPage");
	
	curPageObj.val(pageNumber);
	
	alert(curPageObj.val());
	
	var pagingFormObj = $('#pagingForm');
	pagingFormObj.submit();
}

