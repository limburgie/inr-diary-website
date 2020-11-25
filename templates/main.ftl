<!DOCTYPE html>
<!--[if IE 8]>
<html lang="en" class="ie8">
<![endif]-->
<!--[if IE 9]>
<html lang="en" class="ie9">
<![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-164602052-3"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-164602052-3');
	</script>

	<title>INR Diary | ${request.page.name}</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="INR Diary">
	<meta name="author" content="Peter Mesotten">
	<link rel="shortcut icon" type="image/png" href="../assets/images/logo/icon-transparent-50.png">
	<link href="//fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel='stylesheet' type='text/css'>
	<link href="//fonts.googleapis.com/css?family=Covered+By+Your+Grace" rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="/assets/plugins/font-awesome/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="/assets/plugins/flexslider/flexslider.css">
	<link rel="stylesheet" href="/assets/plugins/animate-css/animate.min.css">
	<link id="theme-style" rel="stylesheet" href="/assets/css/styles.css">
	<!--[if lt IE 9]>
	<script src="//oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="//oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body data-spy="scroll">

<header id="top" class="header navbar-fixed-top">
	<div class="container">
		<h1 class="logo pull-left">
			<a class="scrollto" href="#promo">
				<img id="logo-image" class="logo-image" src="../assets/images/logo/inr-diary-drop-100.png" alt="Logo">
				<span class="logo-title">INR Diary</span>
			</a>
		</h1>
		<nav id="main-nav" class="main-nav navbar-right" role="navigation">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<div class="navbar-collapse collapse" id="navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active nav-item sr-only"><a class="${(request.page.name == 'Home')?then('scrollto','')}" href="/#promo">Home</a></li>
					<li class="nav-item"><a class="${(request.page.name == 'Home')?then('scrollto','')}" href="/#features">Features</a></li>
					<li class="nav-item"><a class="${(request.page.name == 'Home')?then('scrollto','')}" href="/#story">Story</a></li>
					<li class="nav-item"><a class="${(request.page.name == 'Home')?then('scrollto','')}" href="/#testimonials">Testimonials</a></li>
					<li class="nav-item"><a class="${(request.page.name == 'Home')?then('scrollto','')}" href="#contact">Contact</a></li>
					<li class="nav-item last"><a href="/privacy">Privacy</a></li>
				</ul>
			</div>
		</nav>
	</div>
</header>

${inserts.body}

<section id="contact" class="contact section has-pattern">
	<div class="container">
		<div class="row text-center">
			<h2 class="title">Contact us</h2>
			<div class="intro col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
				<p>We’d love to hear from you. Please let us know if you have any questions or feedback.</p>
				<ul class="list-unstyled contact-details">
					<li><i class="fa fa-envelope"></i><a href="mailto:peter@web-factor.be" target="_blank">peter@web-factor.be</a></li>
				</ul>
			</div>
		</div>
		<div class="row text-center">
			<div class="contact-form col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
				<form class="form" action="mailto:peter@web-factor.be" target="_top">
					<div class="form-group message">
						<label class="sr-only" for="message">Message</label>
						<textarea id="message" name="body" class="form-control" rows="6" placeholder="Message:"></textarea>
					</div>
					<input type="hidden" name="subject" value="INR Diary feedback"/>
					<input type="hidden" name="su" value="INR Diary feedback"/>
					<button type="submit" class="btn btn-lg btn-theme">Send Message</button>
				</form>
			</div>
		</div>
	</div>
</section>

<footer class="footer">
	<div class="container">
		<small class="copyright pull-left">&copy; ${.now?string('yyyy')} <a href="https://www.web-factor.be" target="_blank">Web Factor</a></small>
	</div>
</footer>

<script type="text/javascript" src="/assets/plugins/jquery-1.12.3.min.js"></script>
<script type="text/javascript" src="/assets/plugins/isMobile/isMobile.min.js"></script>
<script type="text/javascript" src="/assets/plugins/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/assets/plugins/jquery-inview/jquery.inview.min.js"></script>
<script type="text/javascript" src="/assets/plugins/FitVids/jquery.fitvids.js"></script>
<script type="text/javascript" src="/assets/plugins/jquery-scrollTo/jquery.scrollTo.min.js"></script>
<script type="text/javascript" src="/assets/plugins/jquery-placeholder/jquery.placeholder.js"></script>
<script type="text/javascript" src="/assets/plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="/assets/plugins/jquery-match-height/jquery.matchHeight-min.js"></script>
<script type="text/javascript" src="/assets/js/main.js"></script>
<!--[if !IE]>-->
<script type="text/javascript" src="/assets/js/animations.js"></script>
<!--<![endif]-->

</body>
</html>
