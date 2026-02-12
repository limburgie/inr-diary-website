<#assign features = api.query("feature").orderByAsc("weight").findAll()>
<section id="features" class="features section">
    <div class="container">
        <div class="row">
            <h2 class="title text-center sr-only">${i18n['features']}</h2>
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
        <div>
            <div class="col-md-12 embed-responsive embed-responsive-16by9">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/BZ0ssvwKo8g" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
        </div>
    </div>
</section>