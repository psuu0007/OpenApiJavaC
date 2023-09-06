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

window.onload = function(){
	var memberNameInputObj = document.getElementById('memberName');
	
	memberNameInputObj.style.backgroundColor = '#E7E7E7';
}