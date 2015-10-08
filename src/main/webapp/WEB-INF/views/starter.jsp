<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="include/header.jsp" />
<jsp:include page="include/sidebar.jsp" />

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="col-xs-8">
				<p class="lead">Product List</p>
				
		</div>
		<div class="col-xs-4">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="Search for...">
				<span class="input-group-btn">
					<button class="btn btn-default" type="button">Go!</button>
				</span>
			</div>
		</div>
	</section>

	<!-- Main content -->
	<section class="content">
<jsp:include page="modal/productModal.jsp" />

		<div class="row">
			<div class="col-xs-12">
				<div class="box">

								<div class="box-body">

						<button class="btn btn-primary btn-sm pull-right"
							data-toggle="modal" data-target="#myModal">Add New
							Product</button>

						<table id="example2" class="table table-bordered table-hover">
							<thead>
								<tr>

									<th>Brand</th>
									<th>Name</th>
									<th>Model</th>
									<th>Year</th>
									<th>Type</th>
									<th>Code</th>
									<th>Stock</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach var="row" items="${productList}">
									<tr>
										<td><a href="${pageContext.request.contextPath}/item/${row.code}">${row.brand.name}</a></td>
										<td><a href="${pageContext.request.contextPath}/item/${row.code}">${row.productModel.name}</a></td>
										<td><a href="${pageContext.request.contextPath}/item/${row.code}">${row.productModel.yearModel}</a></td>
										<td><a href="${pageContext.request.contextPath}/item/${row.code}">${row.productType.name}</a></td>
										<td><a href="${pageContext.request.contextPath}/item/${row.code}">${row.stock}</a></td>
										<td><a href="${pageContext.request.contextPath}/item/${row.code}">${row.code}</a></td>
										<td><a href="${pageContext.request.contextPath}/category/${row.productType.id}/item/${row.code}">${row.stock}</a></td>
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


