<%-- 
    Document   : transfermoney
    Created on : Feb 10, 2023, 8:28:27 PM
    Author     : akibr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transfer Money</title>
        <link href="tnsStyle.css" rel="stylesheet" type="text/css"/>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Trirong">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>  
        <script type="text/javascript">
            function loadTransaction() {
                let http = new XMLHttpRequest();
                let  time = Math.random();
                http.onreadystatechange = function () {
                    if (http.readyState === 4) {
//                        alert(http.responseText);
                        document.getElementById("money").innerHTML = http.responseText;
                    }
                };
                http.open("post", "ajax/transactions.jsp?time=" + time);
                http.send();
            }
        </script>
    </head>
    <body onload="loadTransaction()" style="background-image: url('image/trnsbgimg.jpeg');">
        <%@include file="nav.jsp" %>
        <div class="container" id='head'>
            <h1>TRANSACTION DETAILS</h1>
        </div>
        <div class="container" id='tb'>
            <table class="table table-bordered" style="border-color: paleturquoise">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">FROM</th>
                        <th scope="col">TO</th>
                        <th scope="col">TRANSFER AMOUNT</th>

                    </tr>
                </thead>
                <tbody id="money">
                </tbody>
            </table>
        </div>
    </body>
</html>
