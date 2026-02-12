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
                <#assign downloadButtons = api.query("download_buttons").findOne()>
                <div class="download-area">
                    <ul class="btn-group list-inline">
                        <#list downloadButtons.getGroup("buttons") as button>
                            <li>
                                <a href="${button.getText("app_store_url")}" style="background: url('${button.getImage("app_store_image").url}?w=160')" target="_blank">
                                    ${button.getImage("app_store_image").alt}
                                </a>
                            </li>
                        </#list>
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