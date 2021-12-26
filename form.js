
var emailObj;
var emailMsg;
window.onload=function(){    
    emailObj=document.getElementById("email");
    emailMsg=document.getElementById("emailMsg");
};

function checkForm(){
    var bEmail=checkEmail();
    return bEmail;
}

function checkEmail(){
    var regex=/^[\w-]+@([\w-]+\.)+[a-zA-Z]{2,4}$/;
    var value=emailObj.value;
    var msg="";
    if(!value)
        msg="不得为空";
    else if(!regex.test(value))
        msg="格式不合法";
    emailMsg.innerHTML=msg;
    emailObj.parentNode.parentNode.style.color=msg==""?"black":"red";
    return msg=="";
    
}
