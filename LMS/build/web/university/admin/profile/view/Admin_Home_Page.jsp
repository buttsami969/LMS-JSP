
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.LocalDate"%>
<!DOCTYPE html>

<%@page import="home_page_model.Home_Page_Model"%>
<%@page import="common_use_bean.Home_Page_Use_Bean"%><html class="no-js">
    <%@page errorPage="error.jsp"%>

    <head>
        <!-- meta -->
        <meta charset="utf-8">
        <link rel="shorcut icon" type="image/png" href="img/favicon.png">


        <style>
            *{
                padding: 0;
                margin: 0;
                box-sizing: border-box;
                font-family: 'exo 2', sans-serif;
            }



            .clock{
                position: relative;
                width: 350px;
                height: 350px;
                overflow: hidden;
                border-radius: 250px;
                border: 10px solid #f7b733;
                background-color: #fff;
                top: 58%;
                left: 50%;
                box-shadow:0px 10px 10px 0px rgba(0, 0, 0, 0.7);
                transform: translate(-50%, -50%);

            }

            .clock:after{
                content: '';
                position: absolute;
                width: 100%;
                height: 100%;
                top: 0;
                left: 0;
                background: linear-gradient(285deg, rgba(0, 0, 0, 0.175) 50%, rgba(0, 0, 0, 0.1) 50%);
            }

            .clock:before{
                content: '';
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                width: 20px;
                height: 20px;
                background: #f7b733;
                border-radius: 50%;
            }

            .num{
                position: absolute;
                width: 100%;
                height: 100%;
                top: 0;
                left: 0;
                text-align: center;
                font-size: 2rem;
                font-weight: 700;
                padding: 18px;
            }

            .num:after{
                content: '';
                position: absolute;
                top: 0;
                left: 50%;
                transform: translateX(-50%);
                width: 5px;
                height: 15px;
                background:#f7b733;
            }

            .num1{
                transform: rotate(30deg);
            }
            .num1 div{
                transform: rotate(-30deg);
            }
            .date{
                transform: rotate(360deg);
                text-align: center;
                font-size:16px;
                padding-top:250px;
                font-weight:bold;
            }
            .date div{
                transform: rotate(-360deg);

            }
            .num2{
                transform: rotate(60deg);
            }
            .num2 div{
                transform: rotate(-60deg);
            }

            .num3{
                transform: rotate(90deg);
            }
            .num3 div{
                transform: rotate(-90deg);
            }

            .num4{
                transform: rotate(120deg);
            }
            .num4 div{
                transform: rotate(-120deg);
            }

            .num5{
                transform: rotate(150deg);
            }
            .num5 div{
                transform: rotate(-150deg);
            }

            .num6{
                transform: rotate(180deg);
            }
            .num6 div{
                transform: rotate(-180deg);
            }

            .num7{
                transform: rotate(210deg);
            }
            .num7 div{
                transform: rotate(-210deg);
            }

            .num8{
                transform: rotate(240deg);
            }
            .num8 div{
                transform: rotate(-240deg);
            }

            .num9{
                transform: rotate(270deg);
            }
            .num9 div{
                transform: rotate(-270deg);
            }

            .num10{
                transform: rotate(300deg);
            }
            .num10 div{
                transform: rotate(-300deg);
            }

            .num11{
                transform: rotate(330deg);
            }
            .num11 div{
                transform: rotate(-330deg);
            }

            .hand{
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
            }

            .hand div{
                position: absolute;
                bottom: 50%;
                left: 50%;
                transform: translateX(-50%);
                background:linear-gradient(to right, #fc4a1a, #f7b733);
            }

            .sec{
                width: 1px;
                height: 40%;
            }

            .min{
                height: 38%;
                width: 4px;
                border-radius: 2px;
            }

            .hour{
                height: 28%;
                width: 8px;
                border-radius: 4px;
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
        <!-- bootstrap -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css">
        <!-- /bootstrap -->
        <!--<link rel="icon" type="image/x-icon" href="https://icons8.com/icon/113802/books"/>-->

        <!-- core styles -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/animate.min.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/vendor/offline/theme.css">
        <!-- /core styles -->

        <!-- page styles -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/vendor/toastr/toastr.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/vendor/jvectormap/jquery-jvectormap-1.2.2.css">
        <!-- /page styles -->

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- load modernizer -->
        <script src="<%=request.getContextPath()%>/vendor/modernizr.js"></script>
    </head>

    <!-- body -->

    <body style="background:white;">

        <div class="app" data-sidebar="locked">
            <!-- top header -->
            <%@include file="../../common/tab.jsp" %>
            <%@include file="../../../../cursor.jsp" %>


            <!-- chat panel -->

            <!-- /chat panel -->

            <!-- main content -->

            <section class="main-content">
                <!-- content wrapper -->
                <div class="content-wrap">
                    <div class="row mg-b">
                        <div class="col-xs-6">
                            <h2 class="no-margin text-warning" ><strong>DASHBOARD</strong></h2>
                            <h5><strong>Welcome back, ADMIN</strong></h5>
                        </div>
                    </div>
                    <%                                            Home_Page_Model obj_Home_Page_Model = new Home_Page_Model();
                        Home_Page_Use_Bean obj_Home_Page_Use_Bean = obj_Home_Page_Model.select_counts();
                    %>

                    <div class="row">

                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <section class="panel">
                                <div class="panel-body">
                                    <div class="circle-icon bg-warning">
                                        <i class="fa fa-book"></i>
                                    </div>
                                    <div>
                                        <h3 class="no-margin">

                                            <%=obj_Home_Page_Use_Bean.getBook_count()%>

                                        </h3>
                                        Total Books
                                    </div>
                                </div>
                            </section>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <section class="panel">
                                <div class="panel-body">
                                    <div class="circle-icon bg-success">
                                        <i class="fa fa-users"></i>
                                    </div>
                                    <div>
                                        <h3 class="no-margin">
                                            <%=obj_Home_Page_Use_Bean.getStudent_count()%>

                                        </h3>
                                        Total Students
                                    </div>
                                </div>
                            </section>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <section class="panel">
                                <div class="panel-body">
                                    <div class="circle-icon bg-danger">
                                        <i class="fa fa-magnet"></i>
                                    </div>
                                    <div>
                                        <h3 class="no-margin">

                                            <%=obj_Home_Page_Use_Bean.getTotal_issues_today()%>


                                        </h3>
                                       	Total Issues Today
                                    </div>
                                </div>
                            </section>
                        </div> 
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <section class="panel">
                                <div class="panel-body">
                                    <div class="circle-icon bg-info">
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div>
                                        <h3 class="no-margin"> 
                                            <%=obj_Home_Page_Use_Bean.getTotal_books_out()%>

                                        </h3>
                                       	Total Books Out
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>

                </div>
                <!-- /content wrapper -->
            </section>
            <!-- /main content -->
        </section>
        <div style="margin-left:500px;" class="container col-md-3 col-sm-6 col-xs-12">
        
                <div class=" clock">
                    <div class="num num1">
                        <div>1</div>
                    </div>
                    <div class="num num2">
                        <div>2</div>
                    </div>
                    <div class="num num3">
                        <div>3</div>
                    </div>
                    <div class="num num4">
                        <div>4</div>
                    </div>
                    <div class="num num5">
                        <div>5</div>
                    </div>
                    <div class="num num6">
                        <div>6</div>
                    </div>
                 

                    <div class="num num7">
                        <div>7</div>
                    </div>
                    <div class="num num8">
                        <div>8</div>
                    </div>
                    <div class="num num9">
                        <div>9</div>
                    </div>
                    <div class="num num10">
                        <div>10</div>
                    </div>
                    <div class="num num11">
                        <div>11</div>
                    </div>
                    <div class="num num12">
                        <div>12</div>
                    </div>

                    <div class="hand" id="sec">
                        <div class="sec"></div>
                    </div>
                    <div class="hand" id="min">
                        <div class="min"></div>
                    </div>
                    <div class="hand" id="hour">
                        <div class="hour"></div>
                    </div>
                </div>
        </div>
    </div>
    <div data-phase="1" class="offline-ui">
        <div class="offline-ui-content" data-retry-in="" data-retry-in-abbr=""></div>
        <a class="offline-ui-retry"></a>
    </div>



    <!-- core scripts -->
    <script src="<%=request.getContextPath()%>/vendor/jquery-1.11.0.min.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.js"></script>
    <!-- /core scripts -->

    <!-- page scripts -->
    <script src="<%=request.getContextPath()%>/vendor/toastr/toastr.min.js"></script>
    <script src="<%=request.getContextPath()%>/vendor/moment.js"></script>
    <script src="<%=request.getContextPath()%>/vendor/skycons.js"></script>
    <script src="<%=request.getContextPath()%>/vendor/jquery.blockUI.js"></script>
    <script src="<%=request.getContextPath()%>/vendor/raphael.min.js"></script>
    <script src="<%=request.getContextPath()%>/vendor/morris/morris.js"></script>
    <script src="<%=request.getContextPath()%>/vendor/switchery/switchery.js"></script>
    <script src="<%=request.getContextPath()%>/vendor/jquery.slimscroll.js"></script>
    <!-- /page scripts -->

    <!-- theme scripts -->
    <script src="<%=request.getContextPath()%>/js/off-canvas.js"></script>
    <script src="<%=request.getContextPath()%>/vendor/offline/offline.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/main.js"></script>
    <!-- /theme scripts -->
    <script src="../../../../js/script.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/js/dashboard.js"></script>

    <script type="text/javascript" >
        const secDiv = document.getElementById('sec');
        const minDiv = document.getElementById('min');
        const hourDiv = document.getElementById('hour');

        setInterval(updateClock, 1000);

        function updateClock() {
            let date = new Date();
            let sec = date.getSeconds() / 60;
            let min = (date.getMinutes() + sec) / 60;
            let hour = (date.getHours() + min) / 12;

            secDiv.style.transform = "rotate(" + (sec * 360) + "deg)";
            minDiv.style.transform = "rotate(" + (min * 360) + "deg)";
            hourDiv.style.transform = "rotate(" + (hour * 360) + "deg)";
        }

        updateClock();
    </script>
</body>


</html>
