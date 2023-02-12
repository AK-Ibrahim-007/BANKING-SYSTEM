<%@page import="java.sql.*" %>
<%
    int id;
    String name = "";
    String toname = "";
    int amount = 0;
    int i = 0;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("JDBC:MYSQL://localhost/banking", "root", "");
    PreparedStatement ps = con.prepareStatement("select * From transfers");
    ResultSet rs = ps.executeQuery();
    while (rs.next()) {
        i++;

        name = rs.getString("fromuser");
        toname = rs.getString("touser");
        amount = rs.getInt("transamount");
%>
<tr>
    <th scope="row"><%=i%></th>
    <td><%=name%></td>
    <td><%=toname%></td>
    <td><i class="fa fa-rupee" style="font-size:15px;color:white"></i>&nbsp;<%=amount%></td>
</tr>
<%
    }
%>

%>