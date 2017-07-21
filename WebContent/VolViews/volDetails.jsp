<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
<title>Details du Vol</title>
</head>
<body>
		<%@include file="../menu.jsp" %>
		
		<div class="container"> 
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-primary">
					<div class="panel-heading">Details du vol</div>
					<div class="panel-body">
					 <div class="col-md-6">
						<div class="form-group">
						<label>Code Vol :</label>
						<label for="">${volD.codeVol}</label>
						</div>
						<div class="form-group">
						<label>Ville De Depart :</label>
						<label for="">${volD.villeDepart}</label>
						</div>
						<div class="form-group">
						<label>Ville D'arrivee :</label>
						<label for="">${volD.villeArrivee}</label>
						</div>
						<div class="form-group">
						<label>Date du Vol :</label>
						<label for="">${volD.dateVol}</label>
						</div>
					 </div>
					 <div class="col-md-6">
						<div class="form-group">
						<label>Heure de Depart :</label>
						<label for="">${volD.heureDepart}</label>
						</div>
						<div class="form-group">
						<label>Heure D'arrivee :</label>
						<label for="">${volD.heureArrivee}</label>
						</div>
						<div class="form-group">
						<label>Tarif :</label>
						<label for="">${volD.tarif} FCFA</label>
						</div>
						<div class="form-group">
						<label>Nombre de Passagers :</label>
						<label for="">${volD.nbPassagers} Passagers</label>
						</div>
					 </div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-primary">
					<div class="panel-heading">Liste Des Passagers</div>
					<div class="panel-body">
						<br>
						<table class="table table-striped table-responsive table-hover">
						<tbody class="table-responsive">
							
							<tr>
								<th>Numero Passport</th>
								<th>Nom</th>
								<th>Prenom</th>
								<th>Date de Naissance</th>
								<th>Voir</th>
								

							</tr>
							<c:forEach items="${volD.passagers }" var="p">
            <tr>
              <td>${p.numeroPassport }</td>
              <td>${p.nom }</td>
              <td>${p.prenom }</td>
              <td>${p.dateNaiss }</td>
              <td><a href="client?action=voir&numeroPassport=${p.numeroPassport}" class="btn btn-primary">Voir</a></td>
              
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