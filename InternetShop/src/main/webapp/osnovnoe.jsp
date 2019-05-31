<%--
  Created by IntelliJ IDEA.
  User: Eguno
  Date: 30.05.2019
  Time: 3:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<script type="text/javascript">
    var vozmdob = [0,0,0,0,0,0,0,0];
    var plus=document.createElement('img');
    plus.src="images/plus.PNG";
    plus.height=30;
    plus.width=50;
    var minus=document.createElement('img');
    minus.src="images/minus.PNG";
    minus.height=30;
    minus.width=50;
    function dobav(id,naim,cena,novii){
        if (novii==0){
        var tbody = document.getElementById(id).getElementsByTagName("TBODY")[0];
        var row = document.createElement("TR")
        var td1 = document.createElement("TD")
        td1.appendChild(document.createTextNode(naim.toString()))
        var td2 = document.createElement("TD")
        td2.appendChild (document.createTextNode(cena.toString()))
        var td3 = document.createElement("TD")
        td3.appendChild(document.createTextNode(1))
        var td4 = document.createElement("TD")
        td4.appendChild(document.createTextNode(cena.toString()))
            var plus=document.createElement('img');
            plus.src="images/plus.PNG";
            plus.height=30;
            plus.width=50;
            var minus=document.createElement('img');
            minus.src="images/minus.PNG";
            minus.height=30;
            minus.width=50;
            var td5 = document.createElement("TD")
            td5.appendChild(plus)

            var td6 = document.createElement("TD")
            td6.appendChild(minus)
        row.appendChild(td1);

        row.appendChild(td2);
        row.appendChild(td3);
        row.appendChild(td4);
            row.appendChild(td5);
            row.appendChild(td6);
        tbody.appendChild(row);}
        else {
            alert ("Элемент уже был добавлен в корзину")
        }
    }
</script>

    <style>
        <%@include file='stil.css' %>
    </style>

    <title>Title</title>
    <%-- <style>
   body { background: url(images/unlocked.PNG); }
 </style>--%>
</head>
<body>


Д Р А Т У Т И !

<table id="tovari">
<tr>
    <td onclick="dobav('corzina','кот на хлебе','40',vozmdob[0]); vozmdob[0]=1;">  <img src="images/catbread.png" height="300px" width="200px">  <br> кот на хлебе <br> 40 гривен   </td>
    <td onclick="dobav('corzina','у хлеба есть уши','4000',vozmdob[1]); vozmdob[1]=1;">  <img src="images/corb1.jpg" height="300px" width="200px">  <br> у хлеба есть уши <br> бесценен </td>
    <td onclick="dobav('corzina','хлеб с душой кота','100',vozmdob[2]); vozmdob[2]=1;">  <img src="images/corb2.jpg" height="300px" width="200px">  <br> хлеб с душой кота <br> 30 рублей за литр </td>
    <td onclick="dobav('corzina','неещ подумой','40',vozmdob[3]); vozmdob[3]=1;">  <img src="images/corb4.jpg" height="300px" width="200px">  <br> нееш подумой <br> 40 листиков </td>
</tr>
<td onclick="dobav('corzina','виртуальный хлебокот','50',vozmdob[4]); vozmdob[4]=1;"><img src="images/corb5.png" height="300px" width="200px">  <br> виртуальный хлебокот <br> биткоин </td>
<td onclick="dobav('corzina','цветочный горшок','1001',vozmdob[5]); vozmdob[5]=1;"><img src="images/corb6.jpg" height="300px" width="200px">  <br> цветочный горшок <br> 1 кот </td>
<td onclick="dobav('corzina','и вкусно и грустно','111',vozmdob[6]); vozmdob[6]=1;"><img src="images/corb7.jpg" height="300px" width="200px">  <br> и вкусно и грустно <br> 3 "спасибо" </td>
    <td onclick="dobav('corzina','у ушей есть хлеб','23333',vozmdob[7]); vozmdob[7]=1;"><img src="images/corb1.jpg" height="300px" width="200px">  <br> у ушей есть хлеб <br> бесценен</td>
</tr>
</table>

<input type="button"  value="тык" onclick="dobav('corzina','кот','хлеб',0)">

<table id="corzina">
    <tr>
        <td>товар</td>
        <td>цена</td>
        <td>количество</td>
        <td>сумма</td>
        <td class="invis"></td>
        <td class="invis"></td>
    </tr>
</table>
</body>
</html>
