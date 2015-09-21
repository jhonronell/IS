<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="include/header.jsp" />

      <!-- Main Header -->
         
      <!-- Left side column. contains the logo and sidebar -->
      <jsp:include page="include/sidebar.jsp" />

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Page Header
            <small>Optional description</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
            <li class="active">Here</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">

       
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Hover Data Table ${serverTime}</h3>
                </div><!-- /.box-header -->
        <div class="box-body">
                
				 <div class="btn-toolbar">
				 <button class="btn btn-primary btn-sm "> Add New Product </button>
				<button class="btn btn-primary btn-sm "> Add New Product </button>
				<button class="btn btn-primary btn-sm "> Add New Product </button>
				</div>
              
                  <table id="example2" class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>brandName</th>
                        <th>Name</th>
                        <th>productModelName</th>
                        <th>productYearModel</th>
                        <th>productTypeName</th>
                        <th>Code</th>
                        <th>ColorName</th>
                        <th>Sku</th>
                        <th>Price</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="row" items="${productList}">
                      <tr>
                       <td>${row.productModel.yearModel}</td>
                       <td>${row.productModel.brand.name}</td>
                       <td>${row.name}</td>
                       <td>${row.dateShipped}</td>
                       <td>${row.dateReceived}</td>
                       <td>${row.datePurchased}</td>
                       <td>${row.distributor.name}</td>
                       <td></td>
                       <td></td>
                      </tr>
                     </c:forEach>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th>Rendering engine</th>
                        <th>Browser</th>
                        <th>Platform(s)</th>
                        <th>Engine version</th>
                        <th>CSS grade</th>
                      </tr>
                    </tfoot>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->

              
           
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

      <!-- Main Footer -->
      
 <jsp:include page="include/footer.jsp" />
    <script>
      $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": false,
          "ordering": true,
          "info": true,
          "autoWidth": false	
        });
      });
    </script>


