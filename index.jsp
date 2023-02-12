<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="style.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Trirong">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>  
    <title>Banking System</title>   
  </head>
  <body>
      <%@include file="nav.jsp" %>
      <div class="container" id='welcome'>
          <h1>Welcome To AK Banking System</h1>
      </div>
      <div class="container" id='para'>
          <p id='paracss'>By using this banking system we can see all customers and transfer <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              money to any user and check the balances of users<p>
      </div>
      <div class="container" id='btmargine'>
          <div class="row">
              <div class="col-sm-3" style="color: white;padding-left: 80px;">
                  <a type="button" class="btn btn-outline-warning" href="transfermoney.jsp" role="button">Transfer Money</a>
              </div>
              <div class="col-sm-9" style="color: white;padding-left:72px;"">
                  <a type="button" class="btn btn-outline-warning" href="viewtnscdetail.jsp" role="button">View All Transaction</a>
              </div>
          </div>
      </div>
  </body>
</html>