function ValidationForm(){
    let usernameValue = $('#register-username').val();
    let emailValue = $('#register-email').val();
    let pwdValue = $('#register-password').val();
    let confirmPwdValue = $('#register-confirm-password').val();


    let formValue = {                                 
        name: usernameValue,
        email: emailValue,
        password: pwdValue,
        confirmPassword: confirmPwdValue
    };

    if(PasswordLength(pwdValue) !== true){
        let error = $('#error-password');
        errorMessage(error, 'A senha possui menos de 8 caracteres')
    }

    if(PasswordValidation(pwdValue) !== true){
        let error = $('#error-password');
        errorMessage(error, 'Senha invalida')
    }

    if(confirmPwdValue !== pwdValue) {
        let error = $('#error-confirm-password');
        errorMessage(error, 'Senha não coincide com a senha anterior')
    }

    if(EmailValidation(emailValue) !== true) {
        let error = $('#error-email');
        errorMessage(error, 'Email invalido')
    }
    return formValue
}

function PasswordLength(password) {
    return password.length >= 8
}

function PasswordValidation(password) {
    let regex = /.*(@|#|\+|\-)+([a-zA-Z0-9]+)$/gm
    var match = regex.exec(password);
    return match != null
}

function EmailValidation(email){
    let regex = /.*(@)+.*(.com)$/gm
    var match = regex.exec(email);
    return match != null
}

function errorDefault(errorObj) {
    errorObj.html('error');
    errorObj.css('opacity', '0');
}

function errorMessage(errorObj, errorText) {
    errorObj.html(errorText);
    errorObj.css('opacity', '1');
}