<#assign faqs = api.query("faq").orderByAsc("priority").findAll()>
<section id="faq" class="faq section">
    <div class="container">
        <h2 class="title text-center">${i18n['frequently-asked-questions']}</h2>
        <div class="row">
            <#list faqs?chunk((faqs?size / 2)?ceiling) as faqList>
                <div class="faq-col col-md-6 col-12">
                    <#list faqList as faq>
                        <div class="item">
                            <h3 id="${faq.uid}" class="faq-anchor">Testje</h3>
                            <h3 class="question">
                                <a data-toggle="collapse" data-target="#collapse-${faq.uid}" data-faq-id="${faq.uid}">
                                    <i class="fa fa-question-circle"/>
                                    <div>${faq.getText("question")}</div>
                                </a>
                            </h3>
                            <div class="answer collapse" id="collapse-${faq.uid}">${faq.getRichText("answer").html}</div>
                        </div>
                    </#list>
                </div>
            </#list>
        </div>
        <div class="more text-center">
            <h4 class="title">${i18n['more-questions']}</h4>
            <a class="btn btn-lg btn-theme scrollto" href="#contact">${i18n['get-in-touch']} <i class="fa fa-arrow-alt-circle-down"></i></a>
        </div>
    </div>
</section>