<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<meta charset="UTF-8">
<style>
body {
	background-color: #66ffe0
}
</style>
<title>Insert title here</title>
</head>
<h1 align="center" style="margin-right: -129px;">User SignUp</h1>
<body>
	<form:form class="row g-3 card card-body mt-2 offset-4" style="margin-right: 348px;" modelAttribute="user"
		action="saveUser">
		<div class="from-group">
			<label for="validationServer01" class="form-label"> name</label> <form:input
				type="text" class="form-control" id="validationServer01" path="name"
				/>
			
		</div>
		<div class="form-group">
			<label for="validationServer02" class="form-label">email</label> <form:input
				type="text" class="form-control" id="validationServer02"
				path="email" />
		</div>
		<div class="form-group">
			<label for="validationServer02" class="form-label">password</label> <form:input
				type="text" class="form-control" id="validationServer02"
				path="password" />
		</div>
		<div class="from-group">
			<label for="validationServerUsername" class="form-label">mobile
				Number</label>
			<div class="input-group has-validation">
				<form:input type="text" class="form-control"
					id="validationServerUsername" path="mobile_Number"
					aria-describedby="inputGroupPrepend3 validationServerUsernameFeedback"
					/>
				
			</div>
		</div>
		<div class="from-group">
			<label for="validationServer03" class="form-label">address</label> <form:input
				type="text" class="form-control" id="validationServer03"
				path="address" aria-describedby="validationServer03Feedback"
				/>
			
		</div>
		<div class="from-group">
			<label for="validationServer04" class="form-label">state</label> <select
				class="form-select" id="validationServer04" path="state"
				aria-describedby="validationServer04Feedback" >
				<option selected disabled value="">Choose...</option>
				<option value="ka">KA</option>
			</select>
			
		</div>
		<div class="from-group">
			<label for="validationServer05" class="form-label">city</label> <form:input
				type="text" class="form-control" id="validationServer05" path="city"
				aria-describedby="validationServer05Feedback" />
			
		</div>
		<div class="from-group">
			<label for="validationServer05" class="form-label">pincode</label> <form:input
				type="text" class="form-control" id="validationServer05"
				path="pincode" aria-describedby="validationServer05Feedback"
				/>
			
		</div>
		<div class="from-group">
			<label for="validationServer05" class="form-label">country</label> <form:input
				type="text" class="form-control" id="validationServer05"
				path="country" aria-describedby="validationServer05Feedback"
				/>
		
		</div>
		<div class="from-group">
			<label for="validationServer05" class="form-label">company
				Name</label> <form:input type="text" class="form-control" id="validationServer05"
				path="company_Name" aria-describedby="validationServer05Feedback"
				/>
		
		</div>
		<div class="from-group">
			<label for="validationServer05" class="form-label">occupation</label>
			<form:input type="text" class="form-control" id="validationServer05"
				path="occupation" aria-describedby="validationServer05Feedback"
				/>
	
		</div>
		<div class="from-group">
			<label for="validationServer05" class="form-label">years Of
				experience</label> <form:input type="text" class="form-control"
				id="validationServer05" path="years_Of_experience"
				aria-describedby="validationServer05Feedback" />
			
		</div>
		<div class="from-group">
			<div class="form-check">
				<input class="form-check-input " type="checkbox" value=""
					id="invalidCheck3" aria-describedby="invalidCheck3Feedback"
					required> <label class="form-check-label"
					for="invalidCheck3"> Agree to terms and conditions </label>
				<div id="invalidCheck3Feedback" class="invalid-feedback">You
					must agree before submitting.</div>
			</div>
		</div>
		<div class="from-group">
			<button class="btn btn-primary" type="submit"  >Submit
				form</button>
		</div>
	</form:form>
</body>
</html>
