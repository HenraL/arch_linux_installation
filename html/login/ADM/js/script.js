/*
** EPITECH PROJECT, 2022
** arch (Workspace)
** File description:
** script.js
*/

function validateForm() {
    var username = document.getElementById("uname").value;
    var password = document.getElementById("passwd").value;
    var url = window.location.href;
    if (username === "leslie" && password === "Leslie") {
        window.location = `${url}/src`;
        return true;
    } else if (username === "romain" && password === "Romain") {
        window.location = `${url}/src`;
        return true;
    } else if (username === "adrien" && password === "Adrien") {
        window.location = `${url}/src`;
        return true;
    } else if (username === "vincent" && password === "Vincent") {
        window.location = `${url}/src`;
        return true;
    } else {
        alert("Wrong username or password. Please try again.");
        return false;
    }
}
