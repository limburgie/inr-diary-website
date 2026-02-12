<section id="privacy" class="story section has-pattern">
    <div class="container">
        <div class="row">
            <#assign privacy = api.query("privacy").findOne()>
            <div class="content col-md-12 text-center">
                <div class="policy">
                    <h2 class="title">${privacy.getText("title")}</h2>
                    ${privacy.getRichText("description").html}
                </div>
            </div>
        </div>
    </div>
</section>