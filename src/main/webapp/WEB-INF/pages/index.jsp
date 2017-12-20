<%--
  Created by IntelliJ IDEA.
  User: dylanyang
  Date: 20/12/2017
  Time: 9:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
  <style type="text/css">
    /*div#itxarea{resize:none; width:100%; height:400px;}*/
    textarea{
      width: 90%;
      height: 650px;
      border:medium double rgb(11, 14, 8);
      margin: 0px;
      text-align: left;

    }
    body{
      text-align: center;
      margin: 0px;
      margin-top: 0px;
    }
    /*div#ibody{*/
    /*width: 250px;*/
    /*}*/
    div#footer{
      /*width: 300px;*/
      text-align:center;
      border:medium double rgb(20, 21, 116);
      background: #888898;
      margin: 0px;
    }
    iframe{
      width: 90%;
      height: 600px;
      margin: 0px;
    }
    table{
      width: 100%;
      border:medium double rgb(20, 21, 116);
      background: #d5ddff;
      margin: 0px;
    }
  </style>
  <script type="text/javascript">
    function submitTryit()
    {
      var t=document.getElementById("iText").value;

      // 关键是这2行
      t=t.replace(/=/gi,"w3equalsign");
      t=t.replace(/script/gi,"w3scrw3ipttag");

      document.getElementById("iframe").value=t;
      document.getElementById("tryitform").action="/showCodeResult";
      validateForm();
      document.getElementById("tryitform").submit();
    }
  </script>
</head>
<body>
<table>
  <tr>
    <td bgcolor="#888898">
      <h1>iWeb Lab Trying</h1>
    </td>
  </tr>
  <tr>
    <td align="left" bgcolor="#d5d1e8">
      运行结果：
    </td>
  </tr>
  <tr>
    <td>
      <iframe name="iframe"></iframe>
    </td>
  </tr>
  <form target="iframe" method="post" action="/showCodeResult" id="tryitform">
    <tr>
      <td>
        <button type="submit"><h1>Run Your Code</h1></button>
      </td>
    </tr>
    <tr>
      <td align="left" bgcolor="#d5d1e8">
        输入程序：
      </td>
    </tr>
    <tr>
      <td>
        <%--<div id="itxarea">--%>
        <textarea id="iText" name="txtDoc"></textarea><%--</div>--%>
        <%--<a href="data:text/html,<img src=x onerror=alert(1)>">测试</a>--%>
        <%--<div id="myDiv"></div>--%>
      </td>
    </tr>

  </form>
</table>
</body>
<div id="footer">
  <footer>
    Copyright © Dylan iHeadLab<p/> Developer Wudao Yang
  </footer>
</div>
</html>