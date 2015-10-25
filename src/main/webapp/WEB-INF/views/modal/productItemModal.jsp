<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/plugins/typeahead/typeahead.css">
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
							<div>
								<label label-default="" class="control-label " for="textinput">Product</label>
							</div>
							<input name="productName" readonly class="typeahead form-control" type="text"
								placeholder="Countries">
						</div>
						<div class="col-md-3">
							<div>
								<label label-default="" class="control-label " for="textinput">Product
									Code</label>
							</div>

							<input name="productCode" type="text" class="form-control input-md"
								placeholder="Medium">
						</div>
					</div>

					<div class="row form-group">
						<div class="col-md-6">
							<div>
								<label label-default="" class="control-label " for="textinput">Distributor</label>
							</div>
							<select name="distributor" class="form-control">
								<c:forEach var="distributor" items="${distributors}">
									<option value="${distributor.id}"> ${distributor.name}</option>
								</c:forEach>
							</select>
						</div>

						<div class="col-md-3">
							<div>
								<label label-default="" class="control-label " for="textinput">Status</label>
							</div>

							<select class="form-control">
								<option>One</option>
								<option>Two</option>
								<option>Three</option>
							</select>
						</div>
						<div class="col-md-3">
							<div>
								<label label-default="" class="control-label " for="textinput">Product
									Code</label>
							</div>

							<input type="text" class="form-control input-md"
								placeholder="Medium">
						</div>
					</div>

					<div class="row form-group">

						<div class="col-md-4">
							<div>
								<label label-default="" class="control-label " for="textinput">Original
									Price</label>
							</div>

							<input type="text" class="form-control input-md"
								placeholder="Medium">
						</div>
						<div class="col-md-4">
							<div>
								<label label-default="" class="control-label " for="textinput">MSRP</label>
							</div>

							<input type="text" class="form-control input-md"
								placeholder="Medium">
						</div>
						<div class="col-md-4">
							<div>
								<label label-default="" class="control-label " for="textinput">Selling
									Price</label>
							</div>

							<input type="text" class="form-control input-md"
								placeholder="Medium">
						</div>

					</div>

					<div class="row form-group">
						<div class="col-md-3">
							<div>
								<label label-default="" class="control-label " for="textinput">Color</label>
							</div>

							<select class="form-control">
								<option>One</option>
								<option>Two</option>
								<option>Three</option>
							</select>
						</div>
						<div class="col-md-3">
							<div>
								<label label-default="" class="control-label " for="textinput">Weight</label>
							</div>

							<input type="text" class="form-control input-md"
								placeholder="Medium">
						</div>
						<div class="col-md-3">
							<div>
								<label label-default="" class="control-label " for="textinput">Dimension</label>
							</div>

							<input type="text" class="form-control input-md"
								placeholder="Medium">
						</div>
				
  			   
  			   
				</div>
			
				
				<c:set var="numberOfRows" value="0"/>
				<c:forEach var="row" items="${productOptions}">
				    <c:if test="${numberOfRows == 0}">
					   	<div class="row form-group">
					</c:if>
						<div class="col-md-2">
							<div>
								<label label-default="" class="control-label " for="textinput">${row.productOptionName.name}
								</label>
							</div>
							  <div>
							  <select name="${row.productOptionName.name}">
							  <c:forEach var="selection" items="${row.productOptionName.productOptionSelections}">
								      <option value="${selection.id}"> ${selection.productOptionValue} </option>
							  </c:forEach>
							  </select>
							  </div>
						</div>
					<c:if test="${ (numberOfRows == 3) || ( numberOfRows eq (fn:length(productOptions) - 1)) }">
					   	</div>
					</c:if>
					
					
				    <c:set var="numberOfRows" value="${numberOfRows+1}"/>
				    <c:if test="${numberOfRows == 4}">	
					   	<c:set var="numberOfRows" value="0"/>
					</c:if>
  			   </c:forEach>
				
				
					<div class="row form-group">
						<div class="col-md-6">
							<div>
								<label label-default="" class="control-label " for="textinput">Weight</label>
							</div>

							<input type="text" class="form-control input-md"
								placeholder="Medium">
						</div>
						<div class="col-md-6">
							<div>
								<label label-default="" class="control-label " for="textinput">Dimension</label>
							</div>

							<input type="text" class="form-control input-md"
								placeholder="Medium">
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