<%
	String deployuri = "";//request.getRequestURI();
	int slashLoc = deployuri.indexOf("/", 1);
	if (slashLoc != -1) {
		deployuri = deployuri.substring(0, slashLoc);
	}


	int timeout= 1_000;

	Thread.sleep(timeout);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Autorisatie fout</title>

	<link href="<%= deployuri %>/css/new_style.css" rel="stylesheet" type="text/css"/>
	<!--[if IE 9]> <link href="/am/css/ie9.css" rel="stylesheet" type="text/css"> <![endif]-->
	<!--[if lte IE 7]> <link href="/am/css/ie7.css" rel="stylesheet" type="text/css"> <![endif]-->
	<script
	src="https://code.jquery.com/jquery-3.2.1.js"
	integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
	crossorigin="anonymous"></script>
</head>
<body>
<script>
// A $( document ).ready() block.
$( document ).ready(function() {
console.log( "ready!" );
});
</script>
<div class="container_12">
	<div class="grid_4 suffix_8">
		<a class="logo" href="/am"></a>
	</div>
	<div class="box box-spaced clear-float">
		<div class="grid_3">
			<div class="product-logo"></div>
		</div>
		<div class="grid_9">
			<div class="box-content clear-float">
				<div class="message">
					<span class="icon info"></span>
					<h1>Timeout: <%=timeout%></h1>
					<h3>Toegang krijgen is niet gelukt. Probeer het opnieuw of neem contact op met uw helpdesk.</h3>
				</div>
			</div>
		</div>
	</div>

	<div class="bkwilogoposition">
		<a href="http://www.bkwi.nl" target="_blank"><img class="bkwilogo" border="0" src="<%= deployuri %>/images/img_logo_bkwi_with_txt.jpg"></a>
	</div>
</div>
<script type="text/javascript">

	var h5 = document.createElement("h5")
</script>
</body>

</html>
