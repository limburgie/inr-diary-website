<section id="promo" class="promo section offset-header has-pattern">
	<div class="container">
		<div class="row">
			<#assign promo = api.query("promo").findOne()>
			<div class="overview col-md-8 col-sm-12 col-xs-12">
				<h2 class="title">${promo.getText("title")}</h2>
				<ul class="summary">
					<#list promo.getGroup("highlights") as highlight>
						<li>${highlight.getText("highlight")}</li>
					</#list>
				</ul>
				<div class="download-area">
					<ul class="btn-group list-inline">
						<li class="android-btn">
							<a href="https://play.google.com/store/apps/details?id=be.webfactor.inrdiaryplus" target="_blank">
								Get it from Google Play
							</a>
						</li>
						<li class="ios-btn">
							<a href="#" target="_blank">
								Get it from App Store
							</a>
						</li>
					</ul>
				</div>
			</div>

			<#assign screenshotList = api.query("screenshot_overview").findOne()>
			<div class="col-md-4 col-sm-12 col-xs-12 screenshot">
				<div class="slider flexslider">
					<ul class="slides">
						<#list screenshotList.getGroup("screenshots") as screenshot>
							<li><img src="${screenshot.getImage("screenshot").url}" alt="${screenshot.getImage("screenshot").alt}"/></li>
						</#list>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>

<#assign features = api.query("feature").orderByAsc("weight").findAll()>
<section id="features" class="features section">
	<div class="container">
		<div class="row">
			<h2 class="title text-center sr-only">Features</h2>
			<#list features as feature>
				<div class="item col-md-3 col-sm-6 col-xs-12 text-center">
					<div class="icon">
						<i class="fa fa-${feature.getText("icon_id")}"></i>
					</div>
					<div class="content">
						<h3 class="title">${feature.getText("title")}</h3>
						<p>${feature.getText("description")}</p>
					</div>
				</div>
			</#list>
		</div>
	</div>
</section>

<section id="story" class="story section has-pattern">
	<div class="container">
		<div class="row">
			<#assign story = api.query("story").findOne()>
			<div class="content col-md-6 col-sm-6 col-xs-12 text-center">
				<h2 class="title">${story.getText("title")}</h2>
				<#list story.getGroup("paragraphs") as paragraph>
					<p>${paragraph.getText("paragraph")}</p>
				</#list>
			</div>

			<#assign team = api.query("team").findOne()>
			<div class="team col-md-5 col-sm-5 col-md-offset-1 col-sm-offset-1 col-xs-12">
				<div class="row">
					<#list team.getGroup("members") as member>
						<div class="member col-md-6 text-center">
							<img class="img-circle" src="${member.getImage("picture").url}" alt="${member.getImage("picture").alt}"/>
							<p class="name">${member.getText("name")}</p>
							<p class="title">${member.getText("role")}</p>
							<ul class="connect list-inline">
								<#if member.getText("twitter_handle")?has_content>
									<li><a href="https://www.twitter.com/${member.getText("twitter_handle")}" target="_blank"><i class="fab fa-twitter"></i></a></li>
								</#if>
								<#if member.getText("linkedin_account")?has_content>
									<li><a href="https://be.linkedin.com/in/${member.getText("linkedin_account")}" target="_blank"><i class="fab fa-linkedin"></i></a></li>
								</#if>
								<#if member.getText("github_account")?has_content>
									<li><a href="https://github.com/${member.getText("github_account")}" target="_blank"><i class="fab fa-github"></i></a></li>
								</#if>
								<#if member.getText("email_address")?has_content>
									<li class="row-end"><a href="mailto:${member.getText("email_address")}" target="_blank"><i class="fa fa-envelope"></i></a></li>
								</#if>
							</ul>
						</div>
					</#list>
				</div>
			</div>
		</div>
	</div>
</section>

<#assign testimonials = api.query("testimonial").findRandom(12)>

<section id="testimonials" class="testimonials section">
	<div class="container">
		<div class="row">
			<h2 class="title text-center">What do people think?</h2>
			<#list testimonials as testimonial>
				<div class="item col-md-4 col-sm-4">
					<div class="quote-box">
						<i class="fa fa-quote-left"></i>
						<blockquote class="quote">
							${testimonial.getText("testimonial")}
						</blockquote>
					</div>
					<div class="people row">
						<img class="img-circle user-pic col-md-5 col-sm-5 col-xs-12 col-md-offset-1 col-sm-offset-1" src="${testimonial.getImage("picture").url}"/>
						<p class="details pull-left">
							<span class="name">${testimonial.getText("name")}</span>
							<span class="title">${testimonial.getText("country")}</span>
						</p>
					</div>
				</div>
			</#list>
		</div>
	</div>
</section>