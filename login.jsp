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
    <font size="4" color="orange" ><strong>登录页面</strong></font>
</header>
<div id="divcontent" align="center">
<form action="${pageContext.request.contextPath }/login" method="post" onsubmit="return checkForm();">
    <table width="850px" height="300px" border="10" cellspacing="0">
    <body class=banner>
    	
    </body>
    <tr>
        <td style="padding: 80px"><h1>新会员登录</h1>
        <table width="70%" border="0" cellspacing="15" class="upline">
        <tr>
            <td style="text-align: right;width: 20%">会员名</td>
                <td style="width: 40%">
                <input type="text" class="textinput" id="username" name="username" "/placeholder="长度1-10位">
                </td>
                <td colspan="2"><span id="usernameMsg"></span>
                </td>
        </tr>
        <tr>
            <td style="text-align: right;width: 20%">密码</td>
                <td style="width: 40%">
                <input type="password" class="textinput" id="password" name="password" "/placeholder="长度6-16位字符">
                </td>
                <td colspan="2"><span id="passwordMsg"></span>
                </td>
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
</div>
</html>