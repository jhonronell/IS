<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/typeahead/typeahead.css">
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Add New Product</h4>
			</div>
			<div class="modal-body">
				<div class="row form-group">
					<div class="col-md-9">
						<label label-default="" class="control-label " for="textinput">Product
							Name</label> <input type="text" name="name" class="form-control "
							placeholder="">
					</div>
					<div class="col-md-3">
						<label label-default="" class="control-label " for="textinput">Product
							Code</label> <input type="text" name="productCode" class="form-control "
							placeholder="">
					</div>
				</div>
				<div class="row form-group">
					<div  class="col-md-10">
					 	<div> <label label-default="" class="control-label " for="textinput">Model</label> </div>
					    <input class="typeahead form-control" name="model" type="text" placeholder="Countries">
					</div>
					<div class="col-md-2">
						<label label-default="" class="control-label " for="textinput">Year
							Model</label> <select name="yearModel" class="form-control"><option>One</option>
							<option>Two</option>
							<option>Three</option>
						</select>
					</div>
				</div>
				<div class="row form-group">
					<div class="col-md-12">
						<label label-default="" class="control-label " for="textinput">Brand</label>
						<select name="brand" class="form-control">
							<c:forEach var="brand" items="${brandList}">
								<option value="${brand.id}">${brand.name}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="row form-group">
					<div class="col-md-12">
						<label label-default="" class="control-label " for="textinput">Description</label>
						<textarea name="description" class="form-control" rows="3"></textarea>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</div>