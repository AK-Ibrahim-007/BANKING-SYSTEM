<%@page import="java.sql.*" %>
<%
    int id;
    String name="";
    String email="";
    int amount=0;
    int i=0;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("JDBC:MYSQL://localhost/banking", "root", "");
    PreparedStatement ps = con.prepareStatement("select * From customers order by name");
    ResultSet rs = ps.executeQuery();
    while (rs.next()) {
        i++;
        
        name = rs.getString("name");
        email = rs.getString("email");
        amount = rs.getInt("amount");
  
%>
<tr>
    <th scope="row"><%=i%></th>
    <td><%=name%></td>
    <td><%=email%></td>
    <td><i class="fa fa-rupee" style="font-size:15px;color:white"></i>&nbsp;<%=amount%></td>
    <td><button type="button" onclick="loadName('<%=rs.getString("name")%>','<%=rs.getInt("id")%>')"class="btn btn-outline-warning" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Trasnfer Money</button></td>
</tr>
<%
    }
%>