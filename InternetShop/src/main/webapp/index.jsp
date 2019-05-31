<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <style>
        body { background: url(images/locked.PNG); }
    </style>
    <meta charset="utf-8" />
    </head>
    <body >

    <br>
    <br>
    <br>
    <br>
    <br>
        <h2 align="center">Добро пожаловать!</h2>
    <br>
        <h2 align="center">Пожалуйста, введите логин и пароль</h2>

        <%! String login  ; %>
        <%!  String parol ; %>

        <br>


    <center> Логин:  <input  type="text" align="center" onchange="login =(this.value)"  >
    <br>
    <br>
       Пароль: <input  type="password" onchange="parol =(this.value)"  >
    <br>
    <br>
        <input type="button"  value="Подтвердить" onclick="
       if ((login=='student')&&(parol=='test')) {document.location.href = 'osnovnoe.jsp';} else {alert('ОШИЪКА!!!!');}" >
    </center>



    </body>
</html>
