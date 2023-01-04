<%-- 
    Document   : registerpage
    Created on : Dec 9, 2022, 2:46:26 PM
    Author     : sami
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="shorcut icon" type="image/png" href="img/favicon.png">
        <title>Library Management System</title>
             <!--//boostrap Link start-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<!--//boostrap Link end-->
<!--registerpage style start-->
<style>
    body{
        background: linear-gradient(to right, #fc4a1a, #f7b733);
 overflow-x:hidden;
    }
    #Container
    {
        border-radius:25px; box-shadow:0 5px 8px 8px rgba(0, 0, 0, 0.5);
    }
    input,label,small{
        color:white;
    }
.btn{
    background: linear-gradient(to right, #fc4a1a, #f7b733);
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


        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!--Css,Fontawesome link end-->
    </head>
    <body>
        
<main  class="d-flex align-items-center primary-background banner-background" style="margin-bottom: 50px;" >
    <div style="margin-top:20px; margin-bottom:40px"id="Container" class="container">
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
        <div class="row">
            <div style="height:650px;border-radius:10px;   box-shadow:10px 10px 10px 15px rgba(0, 0, 0, 0.6); margin-top:20px; margin-bottom:40px" class="col-md-6 offset-md-3">
                <div style="margin-bottom:130px; margin-top:10px;">
                    <div class="card-header text-white text-center">
                        <span class="fa fa-user-circle fa-3x"></span>
                        <p style="margin-top:10px; font-size:20px;">Register Here</p>
                    </div>
                    <h5 id="msg" class="text-center"></h5>
                    <div class="card-body " >
                        <form  action="register" method="post">
                            <div class="form-group">
                                <label for="username">User Name</label>
                                <input name="user" type="text" class="form-control" id="username" aria-describedby="emailHelp" placeholder="Enter Username" >
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <input name="email"type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" >
                                <small id="emailHelp" class="text-white form-text ">We'll never share your email with anyone else.</small>
                            </div>
                            <div class="form-group">
                                <label for="examclasspleInputPassword1">Password</label>
                                <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" >
                            </div>
                            <div class="form-group text-white">
                                <label for="gender">Select Gender</label>
                                <br>
                                <input type="radio"id="gender1" name="gender" value="Male"  > Male
                                <input type="radio"id="gender2" name="gender" value="Female" >  Female
                            </div>
            

                            <div class="form-group form-check">
                                <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1" >
                                <label class="form-check-label" for="exampleCheck1">Agree terms and Conditions</label>
                            </div>
                         
                            <div class="container text-center">
                                   <button style="box-shadow:0px 1px 1px 0px rgba(0, 0, 0, 0.5); background: #fc4a1a;" type="submit" class="btn btn-lg btn-block text-white">Sign Up</button>
                            </div>
                            
                        </form>
                    </div>
                    <div class="loader center-align" style="margin-top:10px; display: none;">
                        <div class="spinner-border text-primary" style="margin-left:220px; padding:30px; font-size:30px;"></div>
                        <h5 style="text-align:center; margin-top:50px; margin-bottom:50px; font-size:30px;">Please Wait...</h5>

                    </div>

                </div>
            </div>
        </div>

    </div>

</div>
</main>

<script>
    $("#form").on('submit', function (event) {
        event.preventDefault();
        let f = $(this).serialize();
        console.log(f);
        $(".loader").show();
        $("#form").hide();
        $.ajax({
            url:"register",
            data:f,
            type:'POST',
            success: function (data, textStatus, jqXHR) {
                $(".loader").hide();
                $("#form").show();
                if (data.trim() === "Record Saved!")
                {
                    swal("Successfully Registered!")
                            .then((value) => {
                                window.location = "login.jsp";
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
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <!--<script src="js/myjs.js" type="text/javascript"></script>-->
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </body>
</html>
