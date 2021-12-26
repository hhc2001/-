<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>111</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<header>
    <div id="menu-bar" class="fas fa-bars"></div>
    <a href="#" class="logo">nike</a>
    <font size="4" color="orange" ><strong>注册页面</strong></font>
</header>
<div id="divcontent" align="center">
<form action="${pageContext.request.contextPath }/register" method="post" onsubmit="return checkForm();">
    <table width="850px" height="300px" border="10" cellspacing="0">
    <body class=banner>
    	
    </body>
    <tr>
        <td style="padding: 80px"><h1>新会员注册</h1>
        <table width="80%" border="0" cellspacing="15" class="upline">
        <tr>
            <td style="text-align: right;width: 20%;opacity: 1">会员邮箱</td>
                <td style="width: 40%">
                <input type="text" class="textinput" id="email" name="email" onkeyup="checkEmail() ;"/placeholder="请输入有效地址">
                </td>
                <td colspan="2"><span id="emailMsg"></span>
                </td>
        </tr>
        <tr>
            <td style="text-align: right;width: 20%">会员名</td>
                <td style="width: 40%">
                <input type="text" class="textinput" id="username" name="username" onkeyup="checkUsername();"/placeholder="长度1-10位">
                </td>
                <td colspan="2"><span id="usernameMsg"></span>
                </td>
        </tr>
        <tr>
            <td style="text-align: right;width: 20%">密码</td>
                <td style="width: 40%">
                <input type="password" class="textinput" id="password" name="password" onkeyup="checkPassword();"/placeholder="长度6-16位字符">
                </td>
                <td colspan="2"><span id="passwordMsg"></span>
                </td>
        <tr>
            <td style="text-align: right;width: 20%">确认密码</td>
                <td style="width: 40%">
                <input type="password" class="textinput" id="repassword" name="repassword" onkeyup="checkConfirm();"/>
                </td>
                <td colspan="2"><span id="confirmMsg"></span>&nbsp;
                </td>
        </tr>
        <tr>
            <td style="text-align: right;width: 20%">联系电话</td>
                <td style="width: 40%">
                <input type="text" class="textinput" style="width: 300px" name="telephone"/>
                </td>
                <td >&nbsp;
                </td>
        </tr>
        <table width="70%" border="0" cellspacing="0">
            <tr>
                <td style="padding-top: 20px;text-align: center">
                    <input type="image" src="images/tj.png" name="submit" border="0"/>
                </td>
            </tr>
        </table>
        </table>
        </td>    
    </tr>
    </table>
</form>
    
<script>
    
    var emailObj;
    var usernameObj;
    var passwordObj;
    var confirmObj;
    var emailMsg;
    var usernameMsg;
    var passwordMsg;
    var confirmMsg;
    window.onload=function(){    
        emailObj=document.getElementById("email");
        usernameObj=document.getElementById("username");
        passwordObj=document.getElementById("password");
        confirmObj=document.getElementById("repassword");
        emailMsg=document.getElementById("emailMsg");
        usernameMsg=document.getElementById("usernameMsg");
        passwordMsg=document.getElementById("passwordMsg");
        confirmMsg=document.getElementById("confirmMsg");
    };

    function checkForm(){
        var bEmail=checkEmail();
        var bUsername=checkUsername();
        var bPassword=checkPassword();
        var bConfirm=checkConfirm();
        return bEmail&&bUsername&&bPassword&&bConfirm;
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
    
        function checkUsername(){
        var regex=/^[a-zA-Z_]\w{0,9}$/;
        var value=usernameObj.value;
        var msg="";
        if(!value)
            msg="不得为空";
        else if(!regex.test(value))
            msg="格式不合法";
        usernameMsg.innerHTML=msg;
        usernameObj.parentNode.parentNode.style.color=msg==""?"black":"red";
        return msg=="";
    }
    
        function checkPassword(){
        var regex=/^.{6,16}$/;
        var value=passwordObj.value;
        var msg="";
        if(!value)
            msg="不得为空";
        else if(!regex.test(value))
            msg="格式不合法";
        passwordMsg.innerHTML=msg;
        passwordObj.parentNode.parentNode.style.color=msg==""?"black":"red";
        return msg=="";
    }
    
        function checkConfirm(){
        var passwordValue=passwordObj.value;
        var confirmvalue=confirmObj.value;
        var msg="";
        if(!confirmvalue)
            msg="不得为空";
        else if(passwordValue!=confirmvalue)
            msg="密码必须保持一致";
        confirmMsg.innerHTML=msg;
        confirmObj.parentNode.parentNode.style.color=msg==""?"black":"red";
        return msg=="";
    }

</script>
</div>
</html>