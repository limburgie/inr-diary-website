<section id="privacy" class="story section has-pattern">
	<div class="container">
		<div class="row">
            <#assign privacy = api.query("privacy").findOne()>
			<div class="content text-center">
				<h2 class="title">${privacy.getText("title")}</h2>
				${privacy.getRichText("description").html}
			</div>
		</div>
	</div>
</section>