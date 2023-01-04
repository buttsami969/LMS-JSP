
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page errorPage="error.jsp"%>
<%@page import="java.util.Iterator"%>

<%@page import="common.Common_Things"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="shorcut icon" type="image/png" href="img/favicon.png">

        <!-- meta -->
        <meta charset="utf-8">



        <!-- bootstrap -->
        <link rel="stylesheet" href="<%=Common_Things.url%>/bootstrap/css/bootstrap.min.css">
        <!-- /bootstrap -->

        <!-- core styles -->
        <link rel="stylesheet" href="<%=Common_Things.url%>/css/main.css">
        <!-- /core styles -->

        <!-- page styles -->
        <!-- /page styles -->

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <style>
            body,.user,container{

                background: linear-gradient(to right, #fc4a1a, #f7b733);
                overflow-x: hidden;
                overflow-y: hidden;
            }
            .card-body{
                background:white;

            }
            .anchor:hover{

                color:#89216B;
            }
            button:hover{
                border:none;
            }

            *{
                margin: 0;
                padding: 0;
            }
            body{
                min-height: 100vh;
                background-color: #0c192c;
            }
            .container1{
                position: absolute;
                width: 100%;
                height: 100vh;
                overflow: hidden;

            }
            .bubbles{
                position:absolute;
                display: flex;
                margin-left:-500px;
            }
            .bubbles span{
                position: relative;
                width:30px;
                height:30px;
                background: #fc4a1a;
                margin: 4px 4px;

                border-radius: 50%;
                box-shadow: 0 0 0 10px #ffffff44,
                    0 0 50px #fc4a1a,
                    0 0 100px #fc4a1a;
                animation:animate 15s linear infinite;
                animation-duration: calc(135s/var(--i));
            }
            .bubbles span:nth-child(even)
            {
                background:#f7b733;
                box-shadow: 0 0 0 10px #ffffff44,
                    0 0 50px #f7b733,
                    0 0 100px #f7b733;
            }
            @keyframes animate {
                0%
                {
                    transform: translateY(100vh) scale(0);
                }
                100%
                {
                    transform: translateY(-10vh) scale(1);
                }
            }

            ::-webkit-scrollbar {
                width: 10px;
            }

            ::-webkit-scrollbar-track {
                background: #f1f1f1;
            }


            ::-webkit-scrollbar-thumb {
                background:linear-gradient(to right, #fc4a1a, #f7b733);

            }


            ::-webkit-scrollbar-thumb:hover {
                background: #555;
            }


        </style>
        <!-- load modernizer -->
        <script src="<%=Common_Things.url%>/vendor/modernizr.js"></script>








        <script type="text/javascript">
            function validateForm() {
                var x = document.forms["myForm"]["user_name"].value;
                if (x == null || x == "") {
                    alert("Please enter User Name");
                    return false;
                }

                var x = document.forms["myForm"]["password"].value;
                if (x == null || x == "") {
                    alert("Please enter Password");
                    return false;
                }

            }
        </script>



        <script type="text/javascript">
            function validateForm1() {
                var x = document.forms["myForm1"]["admission_no"].value;
                if (x == null || x == "") {
                    alert("Please enter Admission Number");
                    return false;
                }

                var x = document.forms["myForm1"]["password"].value;
                if (x == null || x == "") {
                    alert("Please enter Password");
                    return false;
                }

            }
        </script>
        <!--Css-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>	

        <%@include file="cursor.jsp"%>
    <main class="d-flex align-items-center"  >
        <div class="container mt-5 p-5" style=" width:900px;  height:550px;  background: linear-gradient(to right, #fc4a1a, #f7b733); border-radius:25px; box-shadow:0 5px 8px 8px rgba(0, 0, 0, 0.5); ">
            <div class="bubbles">
                <span style="--i:11;"></span>
                <span style="--i:12;"></span>
                <span style="--i:24;"></span>
                <span style="--i:51;"></span>
                <span style="--i:31;"></span>
                <span style="--i:21;"></span>
                <span style="--i:61;"></span>
                <span style="--i:10;"></span>
                <span style="--i:41;"></span>
                <span style="--i:51;"></span>
                <span style="--i:31;"></span>
                <span style="--i:18;"></span>
                <span style="--i:10;"></span>
                <span style="--i:17;"></span>
                <span style="--i:14;"></span>
                <span style="--i:32;"></span>
                <span style="--i:11;"></span>
                <span style="--i:41;"></span>
                <span style="--i:51;"></span>
                <span style="--i:71;"></span>
                <span style="--i:41;"></span>
                <span style="--i:50;"></span>
                <span style="--i:16;"></span>
                <span style="--i:13;"></span>
                <span style="--i:11;"></span>
                <span style="--i:41;"></span>
                <span style="--i:51;"></span>
                <span style="--i:71;"></span>
                <span style="--i:41;"></span>
                <span style="--i:50;"></span>
                <span style="--i:16;"></span>
                <span style="--i:13;"></span>
                <span style="--i:41;"></span>
                <span style="--i:51;"></span>
                <span style="--i:71;"></span>
                <span style="--i:41;"></span>
                <span style="--i:50;"></span>
                <span style="--i:16;"></span>
                <span style="--i:13;"></span>
                <span style="--i:16;"></span>
                <span style="--i:13;"></span>
                <span style="--i:41;"></span>
                <span style="--i:51;"></span>
                <span style="--i:71;"></span>
                <span style="--i:41;"></span>
                <span style="--i:50;"></span>
                <span style="--i:16;"></span>
                <span style="--i:13;"></span>
                <span style="--i:41;"></span>
                <span style="--i:51;"></span>
                <span style="--i:71;"></span>
                <span style="--i:41;"></span>
                <span style="--i:50;"></span>
                <span style="--i:16;"></span>
                <span style="--i:13;"></span>
            </div>

            <div class="row" >

                <div  class="col-md-6 offset-md-3">
                    <div  class="card"style="background: linear-gradient(to right, #fc4a1a, #f7b733);border-radius:10px; margin-bottom:120px; margin-top:50px;">


                        <div class="card-header primary-background text-white text-center">
                            <span class="p-2 fa fa fa-book fa-3x"></span>
                            <h2 style="color:White"><%=" Library Management System "%></h2>
                        </div>

                        <div class="card-body " style=" box-shadow:10px 10px 10px 0px rgba(0, 0, 0, 0.6); ">
                            <h4  class="text-center mb-4 text-white"><strong>Login in to get started!</strong></h4>
                            <%
                                String message = (String) session.getAttribute("ss_index_message");
                                if (message != null) {
                            %>

                            <div class="alert alert-warning alert-dismissable">
                                <%=message%>
                            </div>


                            <%			session.removeAttribute("ss_index_message");
                                }
                            %>
                          <form name="myForm" action="<%=Common_Things.url %>/admin-sign-in" method="post" onsubmit="return validateForm()">
                              <input type="text" class="form-control mg-b-sm" name="user_name" placeholder="User Name" autofocus required ><br>
                              <input type="password" class="form-control" placeholder="Password"  name="password" required><br>

                                <input  type="checkbox" required><span style="color:black;"> Remeber Me</span>
                                <br> <br>
                                <button style="box-shadow:0px 1px 1px 0px rgba(0, 0, 0, 0.5); background: #fc4a1a;" type="submit" class="btn btn-lg btn-block text-white">Login In</button>
                                <br>
                                <div  style="display:flex">
                                    <hr Style="margin-right:5px;background:gray; width:240px; "  class="bg-warning">
                                    <span style="color:gray"><strong>OR</strong></span>
                                    <hr Style="margin-left:5px;width:240px" class="bg-warning">
                                </div>
                                <br>
                                <div class="text-center mb-3">
                                    <a href="registerpage.jsp" class="text-center" style="box-shadow:0px 1px 1px 0px rgba(0, 0, 0, 0.5);  border-radius:5px;font-size:12px;padding-left:50px; border:none;width:200px; color:white; text-decoration:none; padding:5px; background: linear-gradient(to right, #fc4a1a, #f7b733);" class="btn btn-block" ><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Create Account&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong></a>
                                                </div>

                                                </form>
                                                </div>


                                                </div>

                                                </div>

                                                </div>
                                                </div>

                                                <!--               
                                                
                                                                                                        <div class="app-user"> 
                                                                                                            <div class="user-container">
                                                                                                
                                                                                                                
                                                                                                                    <header class="panel-heading"><%=" Library Management System - MIS"%></header>
                                                                                                                    <div class="user pd-lg">
                                                                                                                        <h6>
                                                                                                                            <strong>Welcome.</strong>Sign in to get started!</h6>
                                                                                                
                                                                                                                        
                                                                                                                        
                                                                                                                        <form name="myForm" action="<%=Common_Things.url%>/admin-sign-in" method="post" onsubmit="return validateForm()">
                                                                                                                            <input type="text" class="form-control mg-b-sm" name="user_name" placeholder="User Name" autofocus >
                                                                                                                            <input type="password" class="form-control" placeholder="Password"  name="password" >
                                                                                                
                                                                                                                            <div class="text-right mg-b-sm mg-t-sm">
                                                                                                                                <a href="#"><%=""%></a>
                                                                                                                            </div>
                                                                                                                            <button class="btn  btn-block" type="submit">Sign in</button>
                                                                                                                        </form>
                                                                                                                    </div>-->



                                                </div>
                                                <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                                                <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
                                                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
                                                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
                                                <!--<script src="js/myjs.js" type="text/javascript"></script>-->
                                                <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>                                                          </div>

                                                <script>
                                $("#form").on('submit', function (event) {
                                    event.preventDefault();
                                    let f = $(this).serialize();
                                    console.log(f);
                                    $(".loader").show();
                                    $("#form").hide();
                                    $.ajax({
                                        url: "login",
                                        data: f,
                                        type: 'POST',
                                        success: function (data, textStatus, jqXHR) {
                                            $(".loader").hide();
                                            $("#form").show();
                                            if (data.trim() === "Record Saved!")
                                            {
                                                swal("Successfully Registered!")
                                                        .then((value) => {
                                                            window.location = "Admin_Home.jsp";
                                                        });
                                            }
                                        },
                                        error: function (jqXHR, textStatus, errorThrown) {
                                            $(".loader").hide();
                                            $("#form").show();
                                            swal("Something Went Wrong!")
                                                    .then((value) => {
                                                        window.location = "register.jsp";
                                                    });
                                        },

                                        processData: false,
                                        contentType: false

                                    });
                                });
                                                </script>
                                                </body>
                                                </html>