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

            function loadData() {
                let http = new XMLHttpRequest();
                let  time = Math.random();
                http.onreadystatechange = function () {
                    if (http.readyState === 4) {
                        document.getElementById("details").innerHTML = http.responseText;
                    }
                };
                http.open("post", "ajax/LoadData.jsp?time=" + time);
                http.send();
            }

            function loadName(name, id) {
                let forname = name;
                let forid = id;
                document.getElementById("forname").innerHTML = '\
                         <input type="text" class="form-control"  id="exampleInputFrom"  value=' + forname + ' disabled>\n\
                         <input type="hidden" id="custId" name="custId" value='+forid+'>';
                let http = new XMLHttpRequest();
                let  time = Math.random();
                http.onreadystatechange = function () {
                    if (http.readyState === 4) {
                        document.getElementById("select").innerHTML = http.responseText;
                    }
                };
                http.open("post", "ajax/LoadName.jsp?time=" + time + "&name=" + name+"&id="+forid);
                http.send();
            }
            function sendMoney() {
                let fromUser = document.getElementById("custId").value;
                let toUser = document.getElementById("select").value;
                let amount=document.getElementById("exampleInputAmount").value;
                let http=new XMLHttpRequest();
                let time=Math.random();
                http.onreadystatechange=function(){
                    if(http.readyState===4){
                        alert(http.responseText);
                    }
                };
                http.open("post","ajax/TransferMoney.jsp?t=" +time+ "&fromUser=" +fromUser+ "&toUser=" +toUser+ "&amount="+amount);
                http.send();
            }
        </script>
    </head>
    <body onload="loadData()" style="background-image: url('image/trnsbgimg.jpeg'); background-attachment: fixed">
        <%@include file="nav.jsp" %>
        <div class="container" id='head'>
            <h1>User Account Details</h1>
        </div>
        <div class="container" id='tb'>
            <table class="table table-bordered" style="border-color: paleturquoise">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">NAME</th>
                        <th scope="col">EMAIL</th>
                        <th scope="col">AMOUNT</th>
                        <th scope="col">TRANSFER</th>
                    </tr>
                </thead>
                <tbody id="details">
                </tbody>
            </table>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Transfer Money</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="mb-3">
                                <label for="exampleInputFrom" class="form-label">From</label>
                                <div id="forname"></div>

                            </div>
                            <div class="mb-3">
                                <label for="exampleInputTo" class="form-label">To</label>
                                <select class="form-select" id="select" aria-label="Default select example">                                    

                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputAmount" class="form-label">Amount</label>
                                <input type="Number" class="form-control" id="exampleInputAmount">
                            </div>

                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-success" onclick="sendMoney()">Confirm</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>