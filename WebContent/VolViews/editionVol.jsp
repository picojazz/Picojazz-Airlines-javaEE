<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
<title>Edition d'un Vol</title>
</head>
<body>
	<%@include file="../menu.jsp" %>

	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-primary">
					<div class="panel-heading">Edition d'un Vol</div>
					<div class="panel-body">
					<form action="vol" method="post">
	<div class="row">
      <div class="col-md-12 ">
        <div class="form-group">
        	
        	<input type="hidden" class="form-control" name="codeVol" value="${vol.codeVol}"></input>
        </div>
      </div>
      </div>
      <div class="row">
      <div class="col-md-6 ">
        <div class="form-group">
        	<label>Ville De Depart</label>
        	<input type="text" class="form-control" name="vDepart" value="${vol.villeDepart}"></input>
        </div>
      </div>
       <div class="col-md-6 ">
        <div class="form-group">
        	<label>Ville D'arrivee</label>
        	<input type="text" class="form-control" name="vArrivee" value="${vol.villeArrivee}"></input>
        </div>
      </div>
      </div>
      <div class="row">
      <div class="col-md-6 ">
        <div class="form-group">
        	<label>Date Du Vol</label>
        	<input type="date" class="form-control" name="dateVol" value="${vol.dateVol}"></input>
        </div>
      </div>
      </div>
      <div class="row">
      <div class="col-md-6 ">
        <div class="form-group">
        	<label>Heure de Depart</label>
        	<input type="time" class="form-control" name="hDepart" value="${vol.heureDepart}"></input>
        </div>
      </div>
       <div class="col-md-6 ">
        <div class="form-group">
        	<label>Heure D'arrivee</label>
        	<input type="time" class="form-control" name="hArrivee" value="${vol.heureArrivee}"></input>
        </div>
      </div>
      </div>
      <div class="row">
      <div class="col-md-6 ">
        <div class="form-group">
        	<label>Tarif</label>
        	<input type="number" class="form-control" name="tarif" value="${vol.tarif}"></input>
        </div>
      </div>
       <div class="col-md-6 ">
        <div class="form-group">
        	<label>Nombre de pasagers</label>
        	<input type="number" class="form-control" name="nbPassagers" value="${vol.nbPassagers}"></input>
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