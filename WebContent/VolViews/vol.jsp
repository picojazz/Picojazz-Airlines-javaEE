<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
<title>Liste des vols</title>
</head>
<body>
	<%@include file="../menu.jsp" %>
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3 col-md-offset-9">
				<a href="#" class="btn btn-lg btn-primary" data-toggle="modal" data-target="#myModal">Ajouter un vol</a>

			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-primary">
					<div class="panel-heading">Liste Des Vols</div>
					<div class="panel-body">
						<form class="form-inline" action="vol" method="get">
							<div class="form-group">
								<label>Mot Cle :</label>
								<input type="text" name="motCle" class="form-control" value="${Lvol.motCle }"></input>
								<input type="submit" name="action" class="btn btn-primary" value="rechercher"></input>
							</div>
						</form><br>
						<table class="table table-striped table-responsive table-hover">
						<tbody class="table-responsive">
						<tr>
							<th>Code</th>
							<th>VilleDepart</th>
							<th>VilleArrivee</th>
							<th>Date</th>
							<th>HeureDepart</th>
							<th>HeureArrivee</th>
							<th>Tarif</th>
							<th>NbPassagers</th>
							<th>Voir</th>
							<th>Editer</th>
							<th>Supprimer</th>
						</tr>
						<c:forEach items="${Lvol.listes }" var="v">
						<tr>
							<td>${v.codeVol }</td>
							<td>${v.villeDepart }</td>
							<td>${v.villeArrivee }</td>
							<td>${v.dateVol }</td>
							<td>${v.heureDepart }</td>
							<td>${v.heureArrivee }</td>
							<td>${v.tarif }</td>
							<td>${v.nbPassagers }</td>
							<td><a href="vol?action=voir&codeVol=${v.codeVol}" class="btn btn-primary">Voir</a></td>
							<td><a href="vol?action=modif&codeVol=${v.codeVol}" class="btn btn-success">Editer</a></td>
							<td><a href="vol?action=supp&codeVol=${v.codeVol}" onclick="return confirm('etes vous sur de vouloir supprimer ce vol')"  class="btn btn-danger">Supprimer</a></td>
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
        <h4 class="modal-title" id="myModalLabel">Ajout d'un Vol</h4>
      </div>
      <form action="vol" method="post">
      <div class="modal-body">
      <div class="row">
      <div class="col-md-12 ">
        <div class="form-group">
        	<label>Code Vol</label>
        	<input type="text" class="form-control" name="codeVol"></input>
        </div>
      </div>
      </div>
      <div class="row">
      <div class="col-md-6 ">
        <div class="form-group">
        	<label>Ville De Depart</label>
        	<input type="text" class="form-control" name="vDepart"></input>
        </div>
      </div>
       <div class="col-md-6 ">
        <div class="form-group">
        	<label>Ville D'arrivee</label>
        	<input type="text" class="form-control" name="vArrivee"></input>
        </div>
      </div>
      </div>
      <div class="row">
      <div class="col-md-6 ">
        <div class="form-group">
        	<label>Date Du Vol</label>
        	<input type="date" class="form-control" name="dateVol"></input>
        </div>
      </div>
      </div>
      <div class="row">
      <div class="col-md-6 ">
        <div class="form-group">
        	<label>Heure de Depart</label>
        	<input type="time" class="form-control" name="hDepart"></input>
        </div>
      </div>
       <div class="col-md-6 ">
        <div class="form-group">
        	<label>Heure D'arrivee</label>
        	<input type="time" class="form-control" name="hArrivee"></input>
        </div>
      </div>
      </div>
      <div class="row">
      <div class="col-md-6 ">
        <div class="form-group">
        	<label>Tarif</label>
        	<input type="number" class="form-control" name="tarif"></input>
        </div>
      </div>
       <div class="col-md-6 ">
        <div class="form-group">
        	<label>Nombre de pasagers</label>
        	<input type="number" class="form-control" name="nbPassagers"></input>
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