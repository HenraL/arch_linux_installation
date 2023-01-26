/*
** EPITECH PROJECT, 2022
** arch (Workspace)
** File description:
** script.js
*/

function validateForm() {
    var username = document.getElementById("uname").value;
    var password = document.getElementById("passwd").value;
    if (username === "luc" && password === "Luc") {
        window.location = "./src/index.html";
        return true;
    } else {
        alert("Wrong username or password. Please try again.");
        return false;
    }
}
