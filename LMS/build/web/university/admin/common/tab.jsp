<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page errorPage="error.jsp"%>

<%@page import="java.util.List"%>
<%@page import="common_use_bean.Admin_Use_Bean"%>
<%@page import="common.Common_Things"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.TimeZone"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%><html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">   
        <style>
            header,.sidebar {

                background: linear-gradient(to right, #fc4a1a, #f7b733);
                color:white;
            }
            span,i{
                color:white;

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

    </head>
    <body>


        <%
            List<Admin_Use_Bean> list1 = (List<Admin_Use_Bean>) session.getAttribute("ss_ADMIN_bean");
            Admin_Use_Bean obj_Admin_Use_Bean = new Admin_Use_Bean();
            if (list1 == null) {

                session.setAttribute("ss_school_index_message", "Opps..Your session expired,Please Login Again");
        %>
        <script type="text/javascript">
            window.location.href = "<%=Common_Things.url%>";
        </script>
        <%
        } else {

            Iterator<Admin_Use_Bean> it_list = list1.iterator();
            obj_Admin_Use_Bean = it_list.next();

        %>

    <title>Library Management</title>


    <header class="header header-fixed navbar bg-white" style="box-shadow:0 5px 8px 0px rgba(0, 0, 0, 0.5)">

        <div class="brand" >
            <a href="#" class="fa fa-bars off-left visible-xs" data-toggle="off-canvas" data-move="ltr"></a>

            <a href="<%=Common_Things.url%>/admin-home"  class="navbar-brand text-white">
                <i style="color:white" class="fa fa-user mg-r-xs"></i> 
                <span >
                    <b>LIBRARY</b> LMS
                </span>
            </a>
        </div>



        <ul class="nav navbar-nav navbar-right off-right">
            <li class="hidden-xs">
                <a  style="color:white;"href="<%=Common_Things.url%>/edit-profile-admin/">
                    +ADMIN
                </a>
            </li> 


            <li class="quickmenu mg-r-md">
                <a href="<%=Common_Things.url%>/Admin_Sign_Out_Controller">
                    <i>Logout</i>
                </a>

            </li>
        </ul>
    </header>
    <!-- /top header -->

    <section class="layout">
        <!-- sidebar menu -->
        <aside class="sidebar canvas-left ">
            <!-- main navigation -->
















            <nav class="main-navigation">
                <ul>
                    <li>
                        <a href="<%=Common_Things.url%>/search-book/">
                            <i class="fa fa-book"></i>
                            <span>Book</span> 
                        </a>




                    </li>

                    <li>
                        <a href="<%=Common_Things.url%>/admin-add-category">
                            <i class="fa fa-edit"></i>
                            <span>Category</span> 
                        </a>




                    </li>


                    <li>
                        <a href="<%=Common_Things.url%>/add-author">
                            <i class="fa fa-coffee"></i>
                            <span>Author</span>  
                        </a>
                    </li>
                    <li>
                        <a href="<%=Common_Things.url%>/student-search/">
                            <i class="fa fa-users"></i>
                            <span>Student</span>  
                        </a>
                    </li>


                    <li>
                        <a href="<%=Common_Things.url%>/complete-issue-history/">
                            <i class="fa fa-legal"></i>
                            <span>Issue History</span>  
                        </a>
                    </li>









                </ul>
            </nav>
            <!-- /main navigation -->




        </aside>
        <!-- /sidebar menu -->

        <%            }
        %>


    </script>
</body>
</html>