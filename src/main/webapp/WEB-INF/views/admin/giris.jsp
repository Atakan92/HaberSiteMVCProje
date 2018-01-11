<%@page pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Log in</title>

<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">

<link rel="stylesheet"
	href="resources/bower_components/bootstrap/dist/css/bootstrap.min.css">

<link rel="stylesheet"
	href="resources/bower_components/font-awesome/css/font-awesome.min.css">

<link rel="stylesheet"
	href="resources/bower_components/Ionicons/css/ionicons.min.css">

<link rel="stylesheet" href="resources/dist/css/AdminLTE.min.css">

<link rel="stylesheet" href="resources/plugins/iCheck/square/blue.css">




<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<a href="../../index2.html"><b>Admin</b>Girişi</a>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">
			<p class="login-box-msg">Admin Sayfası Girişi</p>

			<form action='<s:url value="/giris2"></s:url>' method="POST">
				<div class="form-group has-feedback">
					<input type="text" name="ad" class="form-control"
						id="Kullanici adi" placeholder="ad"> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="sifre" class="form-control" id="sifre"
						placeholder="şifre"> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck"></div>
					</div>
					<div class="col-xs-4">
						<button type="submit" value="Login"
							class="btn btn-primary btn-block btn-flat">Giriş</button>

					</div>
				</div>
			</form>
			<div class="form-group">
				<br /></br>
				<form action='<s:url value="/forgotpass"></s:url>'>
					<button type="submit" value="Forgot"
						class="btn btn-primary btn-block btn-flat" role="button">Şifremi
						Unuttum</button>
				</form>

			</div>
			<a href='<s:url value="/register"></s:url>'
				class="btn btn-primary btn-block btn-flat" role="button">Kayıt</a>
		</div>

	</div>



	<script src="resources/bower_components/jquery/dist/jquery.min.js"></script>

	<script
		src="resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<script src="resources/plugins/iCheck/icheck.min.js"></script>
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});
	</script>
=======
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
         <%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>  
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Login</title>
	<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <script src="resources/assets/js/bootstrap.min.js"></script>
    
   <div class="row">
   <div class="col-md-6 col-md-offset-3">
		<form action='<s:url value="/giris2"></s:url>' method="POST">
  			<div class="form-group">
  				<br/><br/><br/><br/><br/><br/><br/><br/> 
    				<label for="Kullanici adi">Kullanıcı adı</label>
    				<input type="text"  name="ad" class="form-control" id="Kullanici adi" placeholder="ad">
  				</div>
  				
  			<div class="form-group">
    				<label for="Sifre">Şifre</label>
    				<input type="password" name="sifre" class="form-control" id="sifre" placeholder="sifre">
  				</div>
   					<button type="submit" value="Login" class="btn btn-primary btn-lg">Giriş</button>
   					<a href='<s:url value="/register"></s:url>' class="btn btn-primary btn-lg active" role="button">Kayıt</a>
   					
		</form>
		
		<div class="form-group">
					<br/></br>
    	<form action='<s:url value="/forgotpass"></s:url>'>
    				<button type="submit" value="Forgot" class="btn btn-primary btn-lg active" role="button">Şifremi Unuttum</button>
		</form>
				</div>
		
		
		
	</div>
    </div>
>>>>>>> beca8ed2ffaae79defa96dc0bdbdaacff7db28ac
</body>
</html>