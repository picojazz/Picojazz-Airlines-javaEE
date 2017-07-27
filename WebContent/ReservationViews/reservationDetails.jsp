<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
<title>Details de la Reservation</title>
</head>
<body>
		<%@include file="../menu.jsp" %>
		
		<div class="container"> 
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-primary">
					<div class="panel-heading"> Reservation</div>
					<div class="panel-body">
					<h2 class="text-center">Details de la reservation</h2>
					<div class="row">
						<div class="col-md-6">
						<div class="form-group">
						<label>Numer PassePort:</label>
						<label for="">${r.client.numeroPassport}</label>
						</div>
						<div class="form-group">
						<label>Nom :</label>
						<label for="">${r.client.nom}</label>
						</div>
						<div class="form-group">
						<label>Prenom :</label>
						<label for="">${r.client.prenom}</label>
						</div>
						<div class="form-group">
						<label>Date de Naissance :</label>
						<label for="">${r.client.dateNaiss}</label>
						</div>
					 </div>
					 <div class="col-md-6">
						<div class="form-group">
						<label>Id reservation :</label>
						<label for="">${r.id}</label>
						</div>
						<div class="form-group">
						<label>DAte et Heure :</label>
						<label for="">${r.dateReservation}</label>
						</div>
						<div class="form-group">
						<label>Montant :</label>
						<label for="">${r.montant} Fcfa</label>
						</div>
						<div class="form-group">
						<label>Type Payement:</label>
						<label for="">${r.typePaye}</label>
						</div>
					 </div>
					</div>
					<h2 class="text-center">Details du vol</h2><br>
					<div class="row">
					 <div class="col-md-6">
						<div class="form-group">
						<label>Code Vol :</label>
						<label for="">${r.vol.codeVol}</label>
						</div>
						<div class="form-group">
						<label>Ville De Depart :</label>
						<label for="">${r.vol.villeDepart}</label>
						</div>
						<div class="form-group">
						<label>Ville D'arrivee :</label>
						<label for="">${r.vol.villeArrivee}</label>
						</div>
						<div class="form-group">
						<label>Date du Vol :</label>
						<label for="">${r.vol.dateVol}</label>
						</div>
					 </div>
					 <div class="col-md-6">
						<div class="form-group">
						<label>Heure de Depart :</label>
						<label for="">${r.vol.heureDepart}</label>
						</div>
						<div class="form-group">
						<label>Heure D'arrivee :</label>
						<label for="">${r.vol.heureArrivee}</label>
						</div>
						<div class="form-group">
						<label>Tarif :</label>
						<label for="">${r.vol.tarif} FCFA</label>
						</div>
						<div class="form-group">
						<label>Nombre de Passagers :</label>
						<label for="">${r.vol.nbPassagers} Passagers</label>
						</div>
					 </div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
</body>
</html>