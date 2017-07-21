<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
<title>Confirmation du Client</title>
</head>
<body>

	<%@include file="../menu.jsp" %>

	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-primary">
					<div class="panel-heading">Confirmation du Client</div>
					<div class="panel-body">
						<div class="form-group">
						<label>Numero PassPort :</label>
						<label for="">${cl.numeroPassport}</label>
						</div>
						<div class="form-group">
						<label>Nom :</label>
						<label for="">${cl.nom}</label>
						</div>
						<div class="form-group">
						<label>Prenom :</label>
						<label for="">${cl.prenom}</label>
						</div>
						<div class="form-group">
						<label>Date de Naissance :</label>
						<label for="">${cl.dateNaiss}</label>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	
	

</body>
</html>