<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
<title>Edition d'un Client</title>
</head>
<body>
	<%@include file="../menu.jsp" %>

	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-primary">
					<div class="panel-heading">Edition d'un Client</div>
					<div class="panel-body">
					<form action="client" method="post">
		<div class="row">
      
      <div class="col-md-6">
        <div class="form-group">
        	<label>Date de Naissance</label>
        	<input type="date" class="form-control" name="dateNaiss" value="${cl.dateNaiss }"></input>
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
        	
        	<input type="hidden" class="form-control" name="numeroPassport" value="${cl.numeroPassport }"></input>
        </div>
      </div>
      </div>
      <div class="row">
      <div class="col-md-6">
        <div class="form-group">
        	<label>Nom</label>
        	<input type="text" class="form-control" name="nom" value="${cl.nom }"></input>
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
        	<label>Prenom</label>
        	<input type="text" class="form-control" name="prenom" value="${cl.prenom }"></input>
        </div>
      </div>
      </div>
      <div class="col-md-6 ">
        <div class="form-group">
        	
        	<input type="submit" class="btn btn-lg btn-primary" name="action" value="modifier"></input>
        </div>
      </div>
      	</form>
      </div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>