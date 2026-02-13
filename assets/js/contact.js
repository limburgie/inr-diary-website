document.addEventListener("DOMContentLoaded", function() {
    const form = document.querySelector("form");
    const email = document.querySelector("form input[type='email']");
    const message = document.querySelector("form textarea");
    const successMsg = document.querySelector("form .alert-success");
    const errorMsg = document.querySelector("form .alert-danger");
    const submitButton = document.querySelector("form button");
    const captchaInput = document.getElementById("captcha");
    const captchaDisclaimer = document.querySelector(".grecaptcha-disclaimer");
    const sendingOffLabel = document.querySelector(".sending-off");
    const sendingOnLabel = document.querySelector(".sending-on");

    form.addEventListener("submit", function(event) {
        event.preventDefault();
        showSending();

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
                    stopSending();
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

    function showSending() {
        submitButton.setAttribute("disabled", "disabled");
        sendingOffLabel.classList.add("hidden");
        sendingOnLabel.classList.remove("hidden");
        errorMsg.classList.add("hidden");
        successMsg.classList.add("hidden");
    }

    function stopSending() {
        sendingOffLabel.classList.remove("hidden");
        sendingOnLabel.classList.add("hidden");
        submitButton.removeAttribute("disabled");
    }
});