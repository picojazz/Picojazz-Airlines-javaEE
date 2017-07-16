<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
<title>Confirmation du Vol</title>
</head>
<body>

	<%@include file="../menu.jsp" %>

	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-primary">
					<div class="panel-heading">Confirmation du vol</div>
					<div class="panel-body">
						<div class="form-group">
						<label>Code Vol :</label>
						<label for="">${vol.codeVol}</label>
						</div>
						<div class="form-group">
						<label>Ville De Depart :</label>
						<label for="">${vol.villeDepart}</label>
						</div>
						<div class="form-group">
						<label>Ville D'arrivee :</label>
						<label for="">${vol.villeArrivee}</label>
						</div>
						<div class="form-group">
						<label>Date du Vol :</label>
						<label for="">${vol.dateVol}</label>
						</div>
						<div class="form-group">
						<label>Heure de Depart :</label>
						<label for="">${vol.heureDepart}</label>
						</div>
						<div class="form-group">
						<label>Heure D'arrivee :</label>
						<label for="">${vol.heureArrivee}</label>
						</div>
						<div class="form-group">
						<label>Tarif :</label>
						<label for="">${vol.tarif} FCFA</label>
						</div>
						<div class="form-group">
						<label>Nombre de Passagers :</label>
						<label for="">${vol.nbPassagers} Passagers</label>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	

</body>
</html>