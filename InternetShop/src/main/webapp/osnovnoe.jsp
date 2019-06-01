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
    var yacheyki=14;
    var plus=document.createElement('img');
    plus.src="images/plus.PNG";
    plus.height=30;
    plus.width=50;
    var minus=document.createElement('img');
    minus.src="images/minus.PNG";
    minus.height=30;
    minus.width=50;


    function dobav(id,obl){
        if (obl.colvo!=0){
            var tbody = document.getElementById(id).getElementsByTagName("TBODY")[0];
            var row = document.createElement("TR")
            var td1 = document.createElement("TD")
            td1.appendChild(document.createTextNode(obl.name.toString()))
            var td2 = document.createElement("TD")
            td2.appendChild (document.createTextNode(obl.stoim.toString()))
            var td3 = document.createElement("TD")
            td3.appendChild(document.createTextNode(obl.colvo.toString()))
            var td4 = document.createElement("TD")
            td4.appendChild(document.createTextNode(obl.summa.toString()))
            var plus=document.createElement('img');
            plus.src="images/plus.PNG";
            plus.height=30;
            plus.width=50;
            var minus=document.createElement('img');
            minus.src="images/minus.PNG";
            minus.height=30;
            minus.width=50;
            var td5 = document.createElement("TD")
            td5.appendChild(plus);

            var td6 = document.createElement("TD")
            td6.appendChild(minus)
            td5.className+="invis";
            td6.className+="invis";

            row.appendChild(td1);
            row.appendChild(td2);
            row.appendChild(td3);
            row.appendChild(td4);
            row.appendChild(td5);

            row.appendChild(td6);
            tbody.appendChild(row);
            var tds = document.getElementsByTagName("td");

            tds[yacheyki+4].onclick=function () {obl.adddd();}
            tds[yacheyki+5].onclick=function () {obl.minn();}
            yacheyki=yacheyki+6;
        }

        else {

        }
    }
function summirovanie() {
        var ams;
        ams=prod1.summa+prod2.summa+prod3.summa+prod4.summa+prod5.summa+prod6.summa+prod7.summa+prod8.summa;
        alert ("Ваша покупка составляет "+ams+" рублей");

}
    function ochicsh(id){
        var tbody = document.getElementById(id).getElementsByTagName("TBODY")[0];
        var tableRows = tbody.getElementsByTagName('TR');

        var rowCount = tableRows.length;


        for (var x=rowCount-1; x>0; x--) {
            tbody.removeChild(tableRows[x]);
        }

    }
    function product(naimen, cost){
this.name=naimen;
this.stoim=cost;
this.colvo=0;
this.summa=0;
    }
    product.prototype.addd= function(){
        this.colvo= this.colvo+1;
        this.summa=this.colvo*this.stoim;
    }
    product.prototype.adddd = function(){
         this.addd();
         refresh();
    }

    product.prototype.minn = function(){
        this.colvo=this.colvo-1;
        this.summa=this.colvo*this.stoim;
        refresh();

    }

    function sbros() {
        prod1.colvo=0;
        prod1.summa=0;
        prod2.colvo=0;
        prod2.summa=0;
        prod3.colvo=0;
        prod3.summa=0;
        prod4.colvo=0;
        prod4.summa=0;
        prod5.colvo=0;
        prod5.summa=0;
        prod6.colvo=0;
        prod6.summa=0;
        prod7.colvo=0;
        prod7.summa=0;
        prod8.colvo=0;
        prod8.summa=0;

    }

    function refresh(){
        ochicsh('corzina');
        dobav('corzina', prod1);
        dobav('corzina', prod2);
        dobav('corzina', prod3);
        dobav('corzina', prod4);
        dobav('corzina', prod5);
        dobav('corzina', prod6);
        dobav('corzina', prod7);
        dobav('corzina', prod8);
        yacheyki=14;
    }


      var prod1= new product("Монополия",1800);
          var prod2= new product("Колонизаторы",2700);
          var prod3= new product("Каркассон",2200);
          var prod4= new product("Цитадели",1800);
          var prod5= new product("Сопротивление",800);
          var prod6= new product("Стратего",2500);
          var prod7= new product("Нефариус",1000);
          var prod8= new product("Повелитель Токио",1200);
      </script>

          <style>
              <%@include file='stil.css' %>
          </style>



          <title>Магазин</title>
         <style>
         body { background: url(images/fon.bmp); }
       </style>
</head>
<body>

<br>
<h1 align="center"> Добро пожаловать в магазин настольных игр </h1>

<table id="tovari" align="center">
<tr>
    <td onclick="prod1.addd(); refresh()">  <img src="images/monopoly.jpg" height="300px" width="300px">  <br> <script>
        document.writeln(prod1.name.toString());
     </script>  <br> <script>document.writeln(prod1.stoim.toString())</script> рублей </td>
    <td onclick="prod2.addd(); refresh()">  <img src="images/catan.jpg" height="300px" width="300px">  <br><script>
        document.writeln(prod2.name.toString());
    </script>  <br> <script>document.writeln(prod2.stoim.toString())</script> рублей  </td>
    <td onclick="prod3.addd(); refresh()">  <img src="images/carcasson.jpg" height="300px" width="300px">  <br> <script>
        document.writeln(prod3.name.toString());
    </script>  <br> <script>document.writeln(prod3.stoim.toString())</script> рублей  </td>
    <td onclick="prod4.addd(); refresh()">  <img src="images/citadeli.jpg" height="300px" width="300px">  <br> <script>
        document.writeln(prod4.name.toString());
    </script>  <br> <script>document.writeln(prod4.stoim.toString())</script> рублей  </td>
</tr>
<td onclick="prod5.addd(); refresh()"><img src="images/soprotivlenie.jpg" height="300px" width="300px">  <br> <script>
    document.writeln(prod5.name.toString());
</script>  <br> <script>document.writeln(prod5.stoim.toString())</script> рублей  </td>
<td onclick="prod6.addd(); refresh()"><img src="images/stratego.jpg" height="300px" width="300px">  <br> <script>
    document.writeln(prod6.name.toString());
</script>  <br> <script>document.writeln(prod6.stoim.toString())</script> рублей  </td>
<td onclick="prod7.addd(); refresh()"><img src="images/nefarius.jpg" height="300px" width="300px">  <br> <script>
    document.writeln(prod7.name.toString());
</script>  <br> <script>document.writeln(prod7.stoim.toString())</script> рублей  </td>
    <td onclick="prod8.addd(); refresh()"><img src="images/tokio.jpg" height="300px" width="300px">  <br> <script>
        document.writeln(prod8.name.toString());
    </script>  <br> <script>document.writeln(prod8.stoim.toString())</script> рублей </td>
</tr>
</table>
<center>
<br>
  <h1>Корзина</h1>
<br>
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
<br>
<br>
<br>
<input type="button" value="Подсчитать" onclick="summirovanie();">
    <input type="button" value="Очистить корзину" onclick="ochicsh('corzina'); sbros();">
    </center>
</body>
</html>
