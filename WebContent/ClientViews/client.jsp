<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
<title>Gestion des Clients</title>
</head>
<body>
	<%@include file="../menu.jsp" %>
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3 col-md-offset-9">
				<a href="#" class="btn btn-lg btn-primary" data-toggle="modal" data-target="#myModal">Ajouter un client</a>

			</div>
		</div><br>
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-primary">
					<div class="panel-heading">Liste des Clients</div>
					<div class="panel-body">
						<form class="form-inline" action="client" method="get">
							<div class="form-group">
								<label>Mot Cle :</label>
								<input type="text" name="motCle" class="form-control" value="${Lcl.motCle}"></input>
								<input type="submit" name="action" class="btn btn-primary" value="rechercher"></input>
							</div>
						</form><br>
						<table class="table table-striped table-hover">
							<tr>
								<th>Numero Passport</th>
								<th>Nom</th>
								<th>Prenom</th>
								<th>Date de Naissance</th>
								<th>Voir</th>
								<th>Editer</th>
								<th>Supprimer</th>

							</tr>

              <c:forEach items="${Lcl.clients }" var="c">
            <tr>
              <td>${c.numeroPassport }</td>
              <td>${c.nom }</td>
              <td>${c.prenom }</td>
              <td>${c.dateNaiss }</td>
              <td><a href="client?action=voir&numeroPassport=${c.numeroPassport}" class="btn btn-primary">Voir</a></td>
              <td><a href="client?action=modif&numeroPassport=${c.numeroPassport}" class="btn btn-success">Editer</a></td>
              <td><a href="client?action=supp&numeroPassport=${c.numeroPassport}" onclick="return confirm('etes vous sur de vouloir supprimer ce client')"  class="btn btn-danger">Supprimer</a></td>
            </tr>
            </c:forEach>
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
        <h4 class="modal-title" id="myModalLabel">Ajout d'un client</h4>
      </div>
      <form action="client" method="post">
      <div class="modal-body">

        <div class="row">
      <div class="col-md-6">
        <div class="form-group">
        	<label>Numero Passport</label>
        	<input type="text" class="form-control" name="numeroPassport"></input>
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
        	<label>Date de Naissance</label>
        	<input type="date" class="form-control" name="dateNaiss"></input>
        </div>
      </div>
      </div>
      <div class="row">
      <div class="col-md-6">
        <div class="form-group">
        	<label>Nom</label>
        	<input type="text" class="form-control" name="nom"></input>
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
        	<label>Prenom</label>
        	<input type="text" class="form-control" name="prenom"></input>
        </div>
      </div>
      </div>


      </div>
      <div class="modal-footer">
			<input type="submit" name="action" value="ajouter" class="btn btn-lg btn-primary">
        </form>
      </div>
    </div>
  </div>
</div>


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>