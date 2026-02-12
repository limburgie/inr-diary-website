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
                        <div class="member col-xs-6 col-sm-12 col-md-6 text-center">
                            <img class="img-circle" src="${member.getImage("picture").url}" alt="${member.getText("name")}"/>
                            <p class="name">${member.getText("name")}</p>
                            <p class="title">${member.getText("role")}</p>
                            <ul class="connect list-inline">
                                <#if member.getText("email_address")?has_content>
                                    <li class="row-end">
                                        <a href="mailto:${member.getText("email_address")}" target="_blank">
                                            <i class="fa fa-envelope"></i>
                                        </a>
                                    </li>
                                </#if>
                                <#if member.getText("linkedin_account")?has_content>
                                    <li>
                                        <a href="https://be.linkedin.com/in/${member.getText("linkedin_account")}" target="_blank">
                                            <i class="fab fa-linkedin"></i>
                                        </a>
                                    </li>
                                </#if>
                            </ul>
                        </div>
                    </#list>
                </div>
            </div>
        </div>
    </div>
</section>