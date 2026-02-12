<#assign testimonials = api.query("testimonial").findRandom(12)>
<section id="testimonials" class="testimonials section">
    <div class="container">
        <div class="row">
            <h2 class="title text-center">${i18n['what-do-our-users-think']}</h2>
            <#list testimonials as testimonial>
                <div class="item col-md-4 col-sm-4">
                    <div class="quote-box">
                        <i class="fa fa-quote-left"></i>
                        <blockquote class="quote">
                            ${testimonial.getText("testimonial")}
                        </blockquote>
                    </div>
                    <div class="people row">
                        <img class="img-circle user-pic col-md-5 col-sm-5 col-xs-12 col-md-offset-1 col-sm-offset-1" src="/assets/images/avatar.jpg"/>
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