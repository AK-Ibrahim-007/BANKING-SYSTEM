<%-- 
    Document   : TransferMoney
    Created on : Feb 12, 2023, 1:10:40 PM
    Author     : akibr
--%>
<%@page import="java.sql.*" %>
<%
    int fromId = Integer.parseInt(request.getParameter("fromUser"));
    int toId = Integer.parseInt(request.getParameter("toUser"));
    int amount = Integer.parseInt(request.getParameter("amount"));
    String fromname = "";
    String toname = "";
    int availableamount = 0;
    int currentbalance=0;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("JDBC:MYSQL://localhost/banking", "root", "");
    
    PreparedStatement psfrom = con.prepareStatement("SELECT name,amount FROM customers where id=?");
    psfrom.setInt(1, fromId);
    ResultSet rsfrom = psfrom.executeQuery();
    if (rsfrom.next()) {
        fromname = rsfrom.getString("name");
        availableamount = rsfrom.getInt("amount");
    }
    
    PreparedStatement psto = con.prepareStatement("SELECT name,amount FROM customers where id=?");
    psto.setInt(1, toId);
    ResultSet rsto = psto.executeQuery();
    if (rsto.next()) {
        toname = rsto.getString("name");
        currentbalance=rsto.getInt("amount");
    }
    PreparedStatement ps = con.prepareStatement("Insert into transfers(fromuser,touser,transamount)values(?,?,?)");
    ps.setString(1,fromname);
    ps.setString(2,toname);
    if (availableamount >= amount) {
        ps.setInt(3,amount);
    } else {
        out.print("insufficient amount");
    }
    ps.executeUpdate();
    
    PreparedStatement psadd = con.prepareStatement("UPDATE customers SET amount=? WHERE id=?"); 
    psadd.setInt(1,currentbalance+amount);
    psadd.setInt(2,toId);
    psadd.executeUpdate();
    
    PreparedStatement psf = con.prepareStatement("UPDATE customers SET amount=? WHERE id=?"); 
    psf.setInt(1,availableamount-amount);
    psf.setInt(2,fromId);
    psf.executeUpdate();
    
    
    out.print("successfully transfer");
//    out.print(fromname+"....."+toname+"...."+availableamount);
%>
