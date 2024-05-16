//Alert message for sign up
document.querySelector('.sign-up-form').addEventListener('submit', function(event) {
    var password = document.getElementById('password').value;
    var confirmPassword = document.getElementById('confirmPassword').value;
    if (password !== confirmPassword) {
        alert("Passwords do not match");
        event.preventDefault();
    }
});


// Alert message for login
function validateLoginForm() {
    var username = document.getElementById("username").value; 
    var password = document.getElementById("password").value;

    if (username === "" || password === "") { 
        alert("Login Failed! Please enter both username and password."); 
        return false;
    }

    return true;
}
