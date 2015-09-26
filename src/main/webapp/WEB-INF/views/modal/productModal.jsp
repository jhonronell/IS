<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
						<div class="col-md-6">
							<label label-default="" class="control-label " for="textinput">Product
								Name</label> <input type="text" name="name"
								class="form-control input-sm" placeholder="">
						</div>
						<div class="col-md-6">
							 <label
								label-default="" class="control-label " for="textinput">Model</label>
							<input type="text" name="model" class="form-control input-sm"
								placeholder="">
						</div>
					</div>

					<div class="row form-group">

						<div class="col-md-4">
							<label label-default="" class="control-label " for="textinput">Brand</label>
							<select name="brand" class="form-control">
								<option>One</option>
								<option>Two</option>
								<option>Three</option>
							</select>
						</div>
 
						<div class="col-md-2">
							 <label
								label-default="" class="control-label " for="textinput">Year
								Model</label> <select name="yearModel" class="form-control"><option>One</option>
								<option>Two</option>
								<option>Three</option></select>
						</div>

						<div class="col-md-6">
							<label label-default="" class="control-label " for="textinput">Distributor</label>
							<select name="yearModel" class="form-control"><option>One</option>
								<option>Two</option>
								<option>Three</option></select>
						</div>
					</div>
					<div class="row form-group">
						<div class="col-md-3">
							<label label-default="" class="control-label " for="textinput">Code</label>
							<input type="text" name="model" class="form-control input-sm"
								placeholder="">
						</div>

						<div class="col-md-3">
							<label
								label-default="" class="control-label " for="textinput"> SKU </label> 
								<input type="text" name="model" class="form-control input-sm"
								placeholder="">
						</div>

						<div class="col-md-6">
							<label label-default="" class="control-label " for="textinput">Description</label>
							<select name="yearModel" class="form-control"><option>One</option>
								<option>Two</option>
								<option>Three</option></select>
						</div>

					</div>


					<div class="row form-group">
						<div class="col-md-3">
							<label label-default="" class="control-label " for="textinput">Color</label>
							<select name="yearModel" class="form-control"><option>One</option>
								<option>Two</option>
								<option>Three</option></select>
						</div>
						<div class="col-md-3">
							<label label-default="" class="control-label " for="textinput">Size</label>
							<input type="text" name="name" class="form-control input-sm"
								placeholder="">
						</div>
						<div class="col-md-3">
							<label label-default="" class="control-label " for="textinput">Height</label>
							<input type="text" name="model" class="form-control input-sm"
								placeholder="">
						</div>
						<div class="col-md-3">
							<label label-default="" class="control-label " for="textinput">Date Received
								Price</label>	<input type="text" name="model" class="form-control input-sm"
								placeholder="">
						</div>
					</div>

					<div class="row form-group">
						<div class="col-md-4">
							<label label-default="" class="control-label " for="textinput">Original
								Price</label> <select name="yearModel" class="form-control"><option>One</option>
								<option>Two</option>
								<option>Three</option></select>
						</div>
						<div class="col-md-4">
							<label label-default="" class="control-label " for="textinput">MSRP</label>
							<input type="text" name="name" class="form-control input-sm"
								placeholder="">
						</div>
						<div class="col-md-4">
							<label label-default="" class="control-label " for="textinput">Selling
								Price</label> <input type="text" name="model"
								class="form-control input-sm" placeholder="">
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