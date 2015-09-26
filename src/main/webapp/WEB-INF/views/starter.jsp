<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="include/header.jsp" />

<!-- Main Header -->

<!-- Left side column. contains the logo and sidebar -->
<jsp:include page="include/sidebar.jsp" />

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Page Header <small>Optional description</small>
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
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<button class="btn btn-primary btn-sm pull-right" data-toggle="modal" data-target="#myModal">Add New Product</button>

						<table id="example2" class="table table-bordered table-hover">
							<thead>
								<tr>

									<th>Brand</th>
									<th>Name</th>
									<th>Model</th>
									<th>Year</th>
									<th>Type</th>
									<th>Code</th>
									<th>Price</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="row" items="${productList}">
									<tr>

										<td><a href="">${row.productModel.brand.name}</a></td>
										<td><a href="">${row.name}</a></td>
										<td><a href="">${row.productModel.modelName}</a></td>
										<td><a href="">${row.productModel.yearModel}</a></td>
										<td>${row.productType.name}</td>
										<td>${row.code}</td>
										<td>${row.price.price}</td>

									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<tr>

									<th>Brand</th>
									<th>Name</th>
									<th>Model</th>
									<th>Year</th>
									<th>Type</th>
									<th>Code</th>
									<th>Price</th>
								</tr>
							</tfoot>
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->



			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<!-- Main Footer -->
<jsp:include page="modal/productModal.jsp" />
<jsp:include page="include/footer.jsp" />
<script
	src="${pageContext.request.contextPath}/resources/js/productList.js"></script>
<script>
	$(function() {
		$('#example2').DataTable({
			"paging" : true,
			"searching" : false,
			"ordering" : true,
			"info" : true,
			"autoWidth" : true,
			"columnDefs" : [ {
				"orderable" : false,
				"targets" : 0
			} ]
		});

	});
</script>


