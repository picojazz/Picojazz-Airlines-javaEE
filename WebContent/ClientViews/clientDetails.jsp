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


		<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Nouvelle Reservation</h4>
      </div>
      <form action="reservation" method="post">
      <div class="modal-body">
      
      <div class="row">
      <div class="col-md-7 ">
        <div class="form-group">
        	<label>Choix du vol</label>
        	<select class="form-control" name="vol">
        		<c:forEach items="${lv.listes }" var="v">
        			<option value="${v.codeVol}">${v.villeDepart} - ${v.villeArrivee}  ${v.heureDepart} - ${v.heureArrivee}  ${v.dateVol}</option>
        		</c:forEach>
        	</select>
        </div>
      </div>
       <div class="col-md-5 ">
        <div class="form-group">
        	<label>Type Payement</label>
        	<select name="typePaye" class="form-control">
        		<option value="espece">espece</option>
        		<option value="checque">checque</option>
        	</select>
        	<input type="hidden" name="numeroPassport" value="${cl.numeroPassport }">
        </div>
      </div>
      </div>
     
      
      
      </div>
      <div class="modal-footer">
        
        <input type="submit" class="btn btn-lg btn-primary" name="action" value="Ajouter">

      </div>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
	
	

</body>
</html>