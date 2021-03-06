<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:include page="include/header.jsp" />
<jsp:include page="include/sidebar.jsp" />

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="col-xs-8">
			<p class="lead">Product Items</p>

		</div>

	</section>

	<!-- Main content -->
	<section class="content">
	 	<jsp:include page="modal/productItemModal.jsp" />
 
		<div class="row">
			<div class="col-xs-12">
				<div class="box">

					<div class="box-body">

						<button class="btn btn-primary btn-sm pull-right"
							data-toggle="modal" data-target="#myModal">Add Item</button>

						<table id="example2" class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>Distributor</th>
									<th>MSRP</th>
									<th>Stock</th>
									
									<c:forEach var="productOption" items="${productOptions}">
										<th>1 ${productOption.productOptionName.name}</th>
									</c:forEach>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="row" items="${productItems}">
									<tr>
										<td><a href="">${row.distributor.name}</a></td>
										<td></a></td>
										<td><a href="">${row.productPrice.msrp}</a></td>
										<c:forEach var="rowOption" items="${row.productItemOptionValues}">
											<td>
												<a href=""> ${rowOption.productOptionValue.productOptionValue}</a>
											</td>
										</c:forEach>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<tr>
									<th>Type</th>
									<th>Name</th>
									<th>Color</th>
									<th>size</th>
									<th>Distributor</th>
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


