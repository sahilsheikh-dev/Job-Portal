<%-- 
    Document   : subscriptionCandidateSelect
    Created on : 29 Mar, 2020, 5:58:09 PM
    Author     : Nikita
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.qt.jobportal.beans.tblSubscriptionCandidate"%>
<%@page import="com.qt.jobportal.models.SubscriptionCandidateModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <%@include file="head.jsp" %>
    <link rel="stylesheet" type="text/css" href="../assets/lib/perfect-scrollbar/css/perfect-scrollbar.css"/>
        <link rel="stylesheet" type="text/css" href="../assets/lib/material-design-icons/css/material-design-iconic-font.min.css"/>
        <link rel="stylesheet" type="text/css" href="../assets/lib/datetimepicker/css/bootstrap-datetimepicker.min.css"/>
        <link rel="stylesheet" type="text/css" href="../assets/lib/select2/css/select2.min.css"/>
        <link rel="stylesheet" type="text/css" href="../assets/lib/bootstrap-slider/css/bootstrap-slider.min.css"/>
    
    </head>
    <body>
        <%
            SubscriptionCandidateModel subMol = new SubscriptionCandidateModel();
            ArrayList<tblSubscriptionCandidate> subscription = subMol.select();
        %>

        <div class="be-wrapper">

            <%@include file="navbar.jsp" %>

            <%@include file="sidebar.jsp" %>
            <%-- content starts here --%>

            <div class="be-content">
                <div class="main-content container-fluid">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card card-table">
                                <div class="card-header">Export Functions
                                    <div class="tools dropdown">
                                        <span class="icon mdi mdi-download"></span>
                                        <a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown">
                                            <span class="icon mdi mdi-more-vert"></span>
                                        </a>
                                        <div class="dropdown-menu" role="menu">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <table class="table table-bordered table-hover table-fw-widget table-sm" id="table3">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Title</th>
                                                <th>Price</th>
                                                <th>Validity</th>
                                                <th>Active Job Limit</th>
                                                <th>Suggestion</th>
                                                <th>Visibility</th>
                                               <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%   for (tblSubscriptionCandidate subBean : subscription) {
                                                    if (subBean.getSerialNo() == -1) {
                                            %>
                                            <tr>
                                                <td colspan="13"><%= subBean.getException()%></td>
                                            </tr>
                                            <%
                                            } else if (subBean.getSerialNo() == 0) {
                                            %>
                                            <tr>
                                                <td colspan="13"><%= subBean.getException()%></td>
                                            </tr>
                                            <%
                                            } else {
                                            %>


                                            <tr>
                                                <td class="center"><%=  subBean.getSerialNo()%></td>
                                                <td class="center"><%=  subBean.getTitle()%></td>
                                                <td class="center"><%=  subBean.getPrice()%></td>
                                                <td class="center"><%=  subBean.getValidity()%></td>
                                                <td class="center"><%= subBean.getPer_apply_price()%></td>
                                                <td class="center"><%=  subBean.getSuggestion()%></td>
                                                <td class="center"><%=  subBean.getVisibility()%></td>
                                                <td>

                                                    <div class="btn-group btn-space">         
                                                        <button class="btn  btn-sm btn-primary" type="button" title=""> 
                                                          <a href="subscriptionView.jsp?sid=<%= subBean.getSubCandPublicId()%>">  
                                                            <div class="icon-sm"><span class="mdi mdi-eye"></span>
                                                            </div>
                                                          </a>
                                                            <button class="btn  btn-sm btn-warning " type="button">
                                                                <a href="subscriptionCandidateUpdate.jsp?sid=<%= subBean.getSubCandPublicId()%>">  
                                                                    <div class="icon-sm"><span class="mdi mdi-edit"></span></div></a>
                                                                <button class="btn  btn-sm btn-danger" type="button">     
                                                                    <a href="../SubscriptionCandidateController?action=delete&sid=<%= subBean.getSubCandPublicId()%>">
                                                                        <div class="icon-sm"><span class="mdi mdi-delete"></span>
                                                                        </div>
                                                                    </a>

                                                                    </div>


                                                                    </td>
                                                                    </tr>
                                                                    <%
                                                                            }
                                                                        }
                                                                    %>
                                                                    </tbody>
                                                                    </table>
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    </div>

                                                                    </div>
                                                                    </div>
                                                                    <script src="../assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
                                                                    <script src="../assets/lib/perfect-scrollbar/js/perfect-scrollbar.min.js" type="text/javascript"></script>
                                                                    <script src="../assets/lib/bootstrap/dist/js/bootstrap.bundle.min.js" type="text/javascript"></script>
                                                                    <script src="../assets/js/app.js" type="text/javascript"></script>

                                                                    <script src="../assets/lib/datatables/datatables.net/js/jquery.dataTables.js" type="text/javascript"></script>
                                                                    <script src="../assets/lib/datatables/datatables.net-bs4/js/dataTables.bootstrap4.js" type="text/javascript"></script>
                                                                    <script src="../assets/lib/datatables/datatables.net-buttons/js/dataTables.buttons.min.js" type="text/javascript"></script>
                                                                    <script src="../assets/lib/datatables/datatables.net-buttons/js/buttons.flash.min.js" type="text/javascript"></script>
                                                                    <script src="../assets/lib/datatables/jszip/jszip.min.js" type="text/javascript"></script>
                                                                    <script src="../assets/lib/datatables/pdfmake/pdfmake.min.js" type="text/javascript"></script>
                                                                    <script src="../assets/lib/datatables/pdfmake/vfs_fonts.js" type="text/javascript"></script>
                                                                    <script src="../assets/lib/datatables/datatables.net-buttons/js/buttons.colVis.min.js" type="text/javascript"></script>
                                                                    <script src="../assets/lib/datatables/datatables.net-buttons/js/buttons.print.min.js" type="text/javascript"></script>
                                                                    <script src="../assets/lib/datatables/datatables.net-buttons/js/buttons.html5.min.js" type="text/javascript"></script>
                                                                    <script src="../assets/lib/datatables/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js" type="text/javascript"></script>
                                                                    <script src="../assets/lib/datatables/datatables.net-responsive/js/dataTables.responsive.min.js" type="text/javascript"></script>
                                                                    <script src="../assets/lib/datatables/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js" type="text/javascript"></script>
                                                                    <script type="text/javascript">
                                                                        $(document).ready(function () {
                                                                            //-initialize the javascript
                                                                            App.init();
                                                                            App.dataTables();
                                                                        });
                                                                    </script>
        </body>
</html>
