<section id="contact" class="contact section has-pattern">
    <div class="container">
        <div class="row">
            <div class="intro col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                <h2 class="title">${i18n['contact-us']}</h2>
                <p>${i18n['we-d-love-to-hear-from-you']}</p>
            </div>
        </div>
        <div class="row">
            <div class="contact-form col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                <form class="form" method="post" action="/submit">
                    <input type="hidden" name="captcha" id="captcha"/>
                    <input type="hidden" name="locale" value="${request.locale}"/>
                    <div class="form-group">
                        <label class="sr-only" for="email">${i18n['email-address']}</label>
                        <input id="email" type="email" name="email" class="form-control" placeholder="${i18n['your-email-address']}" required/>
                    </div>
                    <div class="form-group message">
                        <label class="sr-only" for="message">${i18n['your-message']}</label>
                        <textarea id="message" name="message" class="form-control" rows="6" placeholder="${i18n['your-question-remark-or-suggestion']}" required></textarea>
                    </div>
                    <div class="alert alert-success hidden">${i18n['thank-you-for-your-message']}</div>
                    <div class="alert alert-danger hidden">${i18n['something-went-wrong-please-try-again']}</div>
                    <div class="submit-row">
                        <button type="submit" class="btn btn-lg btn-theme">
                            <span class="spinner-border" role="status"></span> <span class="sending-off">${i18n['send']}</span> <span class="sending-on hidden">${i18n['sending']}</span>
                        </button>
                        <div class="grecaptcha-disclaimer">
                            ${i18n["this-form-is-protected-by-recaptcha"]}<br/>
                            ${i18n["see-google"]} <a href="https://policies.google.com/privacy" target="_blank">${i18n["privacy-policy"]}</a>
                            ${i18n["and"]} <a href="https://policies.google.com/terms">${i18n["conditions"]}</a>.
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>