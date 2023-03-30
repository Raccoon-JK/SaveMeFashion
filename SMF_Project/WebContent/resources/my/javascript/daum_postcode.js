function daumPostcodeBtn(){
    new daum.Postcode({
        oncomplete: function(data){

            var roadAddr = data.roadAddress;
            var extraRoadAddr = '';

            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }

            if(data.buildingName !== ''){
                extraRoadAddr += (extraRoadAddr !== '' ? ', '+data.buildingName : data.buildingName);
            }

            if(extraRoadAddr !== ''){
                extraRoadAddr = ' ('+extraRoadAddr+')';
            }

            document.getElementById("postcode").value = data.zonecode;
            document.getElementById("roadAddr").value = roadAddr + extraRoadAddr;
            
        }
    }).open();
}
