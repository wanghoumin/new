<%--
  Created by IntelliJ IDEA.
  User: admisnister
  Date: 2019-05-24
  Time: 14:48
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
<body background="image/bgImg.jpg" style="background-size: cover">
<ul id="menu">
    <li>
        <font size="80"color="blue"><div class="text" style="text-align: center;text-shadow: #233581"><h3><strong>Please select your first word:</strong></h3>
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
            String sql = "SELECT *FROM wordlist";  //查询语句
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            int i =0;
            while (rs.next()) {
                String word = rs.getString("1");
                String button;
                if (i!=0){
                    button = "<button style='padding:40px;' value=" + word + ">" + word + "</button>";
                }else{
                    button = "<button style=\"padding:40px;\" onclick=\"location.href='next1.jsp'\" value=" + word + ">" + word + "</button>";
                }
                out.println(button); //将查询结果输出
                i++;
            }

        }

    } catch (Exception e) {
        out.print("error！");
    }
%>
</ul>
</li>
<br/>
</body>
</html>

