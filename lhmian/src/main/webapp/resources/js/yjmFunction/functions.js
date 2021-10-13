/**
 * 작성자 : 윤지민
 * 작성일 : 2021.10.10.
 * 만든 이유 : 자꾸 똑같은거 쓰니까 답답해서...
 */

//뒤로가기		
function goBack() {
    window.history.back();
}

//json으로 serialize, 사용예시 : $("#WRITE_FORM").serializeObject();
jQuery.fn.serializeObject = function() {
    var obj = null;
    try {
        if (this[0].tagName && this[0].tagName.toUpperCase() == "FORM") {
            var arr = this.serializeArray();
            if (arr) {
                obj = {};
                jQuery.each(arr, function() {
                    obj[this.name] = this.value;
                });
            }//if ( arr ) {
        }
    } catch (e) {
        alert(e.message);
    } finally {
    }
    
    return obj;
};

	//숫자만 입력가능한 keyup 이벤트 함수
	function onlyNumberFunc(t) {
		var regexp = /[^0-9]/gi;
		t.onkeyup = function(e) {
			var v = this.value;
			this.value = v.replace(regexp, '');
		}
	}