
function PasswordLength(password) {
    return password.length >= 8
}

function PasswordValidation(password) {
    let regex = /.*([a]+).*(^\S*)*/gm
    var match = regex.exec(password);
    return match != null
}

function EmailValidation(email){
    let regex = /.*(@)+.*(.com)$/gm
    var match = regex.exec(email);
    return match != null
}

username = 'kalebe'
var data = require('./data.json');
console.log(data)
for(i=0; i>=data.length; i++){
    if (data[i].name == username){
        console.log('ok')
    }
}


