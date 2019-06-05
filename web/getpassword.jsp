<%--
  Created by IntelliJ IDEA.
  User: admisnister
  Date: 2019-06-04
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<html>
<head>
    <title>Training</title>
    <link href="css/trainingpage.css" rel="stylesheet" type="text/css">
</head>
<body background="image/bg22.jpg" style="background-size: cover">
<ul id="menu">
    <li>
            <%
    try {
        Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
        String url = "jdbc:mysql://localhost:3306/connPractice"; //数据库名
        String username = "root";  //数据库用户名
        String password = "Amber123whm@@@";  //数据库用户密码
        Connection conn = DriverManager.getConnection(url, username, password);  //连接状态
        if (conn != null) {
            out.print("<br />");
            Statement stmt = null;
            ResultSet rs = null;
            String sql = "SELECT *FROM wordlistall ORDER BY RAND() LIMIT 3";  //查询语句
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            out.print("<br />");
            out.print("<font size='100'color='red'><h3><strong>Here is your password!</strong><h3></font>");
            out.print("<br />");
            while (rs.next()) {
                String word = rs.getString("1");
                String button;
                   out.print("<button style='padding:40px;' value=" + word + ">" + word + "</button>");

            }

        }

    } catch (Exception e) {
        out.print("error！");

    }
    out.print("<br />");
    out.print("<br />");
    out.print("<br />");
%>
</ul>
</li>
<br/>
</body>
</html>


