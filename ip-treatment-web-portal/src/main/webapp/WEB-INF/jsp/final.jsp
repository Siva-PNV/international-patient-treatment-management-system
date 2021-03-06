<!doctype html>


<html lang="en">
<head>
<title>Payment receipt page</title>
<link rel="icon" href="download.png" type="image/x-icon">
<%@ include file="headlink.jsp"%>
<link href="css/basic.css" rel="stylesheet" type="text/css">
<script src="js/basic.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.height {
	min-height: 200px;
}

.icon {
	font-size: 47px;
	color: #5CB85C;
}

.iconbig {
	font-size: 77px;
	color: #5CB85C;
}

.final {
	width: 500px;
	height: 300px;
}

#abc {
	margin-top: 120px;
	padding-left: 400px;
}

.table>tbody>tr>.emptyrow {
	border-top: none;
}

.table>thead>tr>.emptyrow {
	border-bottom: none;
}

.table>tbody>tr>.highrow {
	border-top: 3px solid;
}

body {
	background: url("/Cash.jpg") no-repeat;
}
</style>
</head>
<body>
<%@ include file="header.jsp"%>
	<div class="container-fluid">
		
		<div class="container" id="abc">
			<div class="row">
				<div
					class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

					<div class="row">
						<div class="text-center text-danger">
							<h1 style="padding-left: 115px;">
								<em>Receipt</em>
							</h1>
						</div>

						<table class="table table-hover">
							<thead>
								<tr>
									<th>Type</th>

									<th class="text-center">Total</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="col-md-9"><em>Treatment Cost</em></td>

									<td class="col-md-1 text-center">${packageAmount}</td>
								</tr>
								<tr>
									<td class="col-md-9"><em>Insurance Limit</em></td>

									<td class="col-md-1 text-center">${insurerAmount}</td>
								</tr>


								<tr>

									<td class="col-md-9"><em><b>Total:</b></em></td>
									<td class="text-center text-danger"><h4>
											<strong>${balanceAmount}</strong>
										</h4></td>

								</tr>
								<tr>
									<td colspan="2" align="center"><strong style="color: blue"><em>${amountError}
												${thankyou}</em><br>
										<em style="color: red"> ${greetings}</em></strong></td>

								</tr>
								<tr>
									<td colspan="2">
										<form class="form-group text-center text-danger">
											<input type="button" value="Print Receipt"
												class="btn btn-dark" style="padding-left: 20px"
												onclick="window.print()" />
										</form>
									</td>
								</tr>
							</tbody>
						</table>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>