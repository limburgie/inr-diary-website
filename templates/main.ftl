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

	<title>${i18n['inr-diary']}</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="${i18n['inr-diary']}">
	<meta name="author" content="Peter Mesotten">

	<link rel="icon" type="image/png" href="/assets/img/favicon/favicon-96x96.png" sizes="96x96" />
	<link rel="icon" type="image/svg+xml" href="/favicon.svg" />
	<link rel="shortcut icon" href="/favicon.ico" />
	<link rel="apple-touch-icon" sizes="180x180" href="/assets/img/favicon/apple-touch-icon.png" />
	<meta name="apple-mobile-web-app-title" content="${i18n['inr-diary']}" />
	<link rel="manifest" href="/assets/img/favicon/site.webmanifest" />

	<link href="//fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Khand:wght@300;400;500;600;700&display=swap" rel='stylesheet' type='text/css'>
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
				<img id="logo-image" class="logo-image" src="../assets/img/logo/icon-rounded-512.png" alt="${i18n['inr-diary']}">
				<span class="logo-title">${i18n['inr-diary']}</span>
			</a>
		</h1>
		<nav id="main-nav" class="main-nav navbar-right" role="navigation">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-collapse">
					<span class="sr-only">${i18n['toggle-navigation']}</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<div class="navbar-collapse collapse" id="navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active nav-item sr-only"><a class="scrollto" href="/#promo">${i18n['home']}</a></li>
					<li class="nav-item"><a class="scrollto" href="/#features">${i18n['features']}</a></li>
					<li class="nav-item"><a class="scrollto" href="/#story">${i18n['story']}</a></li>
					<li class="nav-item"><a class="scrollto" href="/#testimonials">${i18n['testimonials']}</a></li>
					<li class="nav-item"><a class="scrollto" href="/#faq">${i18n['faq']}</a></li>
					<li class="nav-item"><a class="scrollto" href="/#contact">${i18n['contact']}</a></li>
					<li class="nav-item dropdown language-picker last">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-globe"></i> ${request.locale.language?upper_case}<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<#list site.locales as locale>
								<#if locale != request.locale>
									<li>
										<a class="<#if locale == request.locale>active</#if>" href="${uri.ofCurrent(locale.language)}">
											${locale.language?upper_case}
										</a>
									</li>
								</#if>
							</#list>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
	</div>
</header>

${inserts.body}

<footer class="footer">
	<div class="container">
		<small class="copyright pull-left">&copy; ${.now?string('yyyy')} <a href="https://www.web-factor.be/en" target="_blank">Web Factor</a></small>
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
<script src="//www.google.com/recaptcha/api.js?render=6LeUn2spAAAAAHkSx432ENGSaBE3Lpq1O-YMDuna"></script>
<script type="text/javascript" src="/assets/js/main.js"></script>
<script type="text/javascript" src="/assets/js/contact.js"></script>
<!--[if !IE]>-->
<script type="text/javascript" src="/assets/js/animations.js"></script>
<!--<![endif]-->

<script type="text/javascript">
	$(function() {
		if (location.hash.startsWith("#faq")) {
			$("#collapse-" + location.hash.substring(1)).collapse("show");
		}

		$(".question a").click(function() {
			var id = $(this).attr("data-faq-id");
			var node = $("#" + id);

			if (node.length) {
				node.attr("id", "");
			}

			window.location.hash = id;

			if (node.length) {
				node.attr("id", id);
			}
		});
	});
</script>
</body>
</html>
