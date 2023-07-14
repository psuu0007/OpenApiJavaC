function newExternalFnc(){
	var inputObj = document.getElementsByTagName('input')[0];
	var spanObj = document.getElementById('spanTest');
	
	var ageNum = inputObj.value;
	ageNum = Number(ageNum);
	
	var resultStr;
	
	if (Number.isInteger(ageNum) == true) {
		resultStr = '제 나이는 ' + inputObj.value + '입니다.';
	} else {
		resultStr = '올바른 숫자를 입력하세요.'
	}
	spanObj.innerHTML = resultStr;
}
	