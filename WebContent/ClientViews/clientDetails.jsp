<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
<title>Details du Client</title>
</head>
<body>

	<%@include file="../menu.jsp" %>

	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-primary">
					<div class="panel-heading">Details du Client</div>
					<div class="panel-body">
						<div class="form-group">
						<label>Numero PassePort :</label>
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
		
		</div><br>
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-primary">
					<div class="panel-heading">Liste Des reservations ...<a href="#" style="color:white; "  data-toggle="modal" data-target="#myModal">(nouvelle reservation)</a></div>
					<div class="panel-body">
						<br>
						<table class="table table-striped table-responsive table-hover">
						<tbody class="table-responsive">
						
							<tr>
								<th>Id</th>
								<th>Date et heure</th>
								<th>Montant</th>
								<th>Type Payement</th>
								<th>Code Vol</th>
								<th>Ville Depart</th>
								<th>Ville Arrivee</th>
								<th>voir</th>
							</tr>
							<c:forEach items="${cl.reservations }" var="r">
            <tr>
              <td>${r.id }</td>
              <td>${r.dateReservation }</td>
              <td>${r.montant }</td>
              <td>${r.typePaye }</td>
              <td>${r.vol.codeVol}</td>
              <td>${r.vol.villeDepart}</td>
              <td>${r.vol.villeArrivee}</td>
              <td><a href="reservation?action=voir&id=${r.id}" class="btn btn-primary">Details</a></td>
              
            </tr>
            </c:forEach>
						
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	
	

</body>
</html>