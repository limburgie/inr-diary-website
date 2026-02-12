document.addEventListener("DOMContentLoaded", function() {
    const form = document.querySelector("form");
    const email = document.querySelector("form input[type='email']");
    const message = document.querySelector("form textarea");
    const successMsg = document.querySelector("form .alert-success");
    const errorMsg = document.querySelector("form .alert-danger");
    const submitButton = document.querySelector("form button");
    const captchaInput = document.getElementById("captcha");
    const captchaDisclaimer = document.querySelector(".grecaptcha-disclaimer");

    form.addEventListener("submit", function(event) {
        event.preventDefault();
        showButtonLoading();

        grecaptcha.ready(function() {
            grecaptcha.execute("6LeUn2spAAAAAHkSx432ENGSaBE3Lpq1O-YMDuna", {action: "submit"}).then(function(token) {
                captchaInput.value = token;
                fetch(form.getAttribute("action"), {
                    method: "POST",
                    body: new FormData(form)
                }).then(response => {
                    if (!response.ok) {
                        throw new Error("Failed");
                    }
                    return "OK";
                }).then(data => {
                    if (data.trim() === "OK") {
                        showSuccess();
                    } else {
                        throw new Error("Failed");
                    }
                }).catch(error => {
                    showError();
                    stopButtonLoading();
                })
            });
        })
    });

    function showError() {
        errorMsg.classList.remove("hidden");
    }

    function showSuccess() {
        errorMsg.classList.add("hidden");
        successMsg.classList.remove("hidden");
        submitButton.classList.add("hidden");
        email.classList.add("hidden");
        message.classList.add("hidden");
        captchaDisclaimer.classList.add("hidden");
    }

    function showButtonLoading() {
        submitButton.setAttribute("disabled", "disabled");
        errorMsg.classList.add("hidden");
        successMsg.classList.add("hidden");
    }

    function stopButtonLoading() {
        submitButton.removeAttribute("disabled");
    }
});