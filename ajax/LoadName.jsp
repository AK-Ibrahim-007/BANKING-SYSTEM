<%@page import="java.sql.*" %>
<%
    int forid = Integer.parseInt(request.getParameter("id"));
    int id;
    String name = "";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("JDBC:MYSQL://localhost/banking", "root", "");
    PreparedStatement ps = con.prepareStatement("select * From customers order by name");
    ResultSet rs = ps.executeQuery();
%>
<option selected disabled>Open this select menu</option>
<%
    while (rs.next()) {

        id = rs.getInt("id");
        if (forid == id) {
            continue;
        }
        name = rs.getString("name");
%>

<option value="<%=id%>"><%=name%></option>      
<%
    }
%>