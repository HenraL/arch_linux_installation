/*
** EPITECH PROJECT, 2022
** arch (Workspace)
** File description:
** script.js
*/

function put_error_meaning(meaning) {
    if (meaning.length > 0) {
        document.getElementById("desc_content").innerHTML = meaning;
    }
}

function meaning(err_id) {
    if (err_id === "401") {
        put_error_meaning("Unauthorized<br>This error happens when a website visitor tries to access a restricted web page but isn’t authorized to do so.");
    } else if (err_id === "400") {
        put_error_meaning("Bad Request<br>This is basically an error message from the web server telling you that the application you are using (e.g., your web browser) accessed it incorrectly or that the request was somehow corrupted on the way.");
    } else if (err_id === "403") {
        put_error_meaning("Forbidden<br>This error is similar to the 401 error, but note the difference between unauthorized and forbidden.In this case no login opportunity was available.This can happen, for example, if you try to access a (forbidden) directory on a website.");
    } else if (err_id === "404") {
        put_error_meaning("Not Found<br>Most people are bound to recognize this one.A 404 error happens when you try to access a resource on a web server(usually a web page) that doesn’t exist.Some reasons for this happening can for example be a broken link, a mistyped URL, or that the webmaster has moved the requested page somewhere else (or deleted it). To counter the ill effect of broken links, some websites set up custom pages for them (and <a href='./errornf/error404.html'>some of those are really cool</a>).")
    } else if (err_id === "500") {
        put_error_meaning("Internal Server Error<br>The description of this error pretty much says it all. It’s a general-purpose error message for when a web server encounters some form of internal error. For example, the web server could be overloaded and therefore unable to handle requests properly.");
    } else {
        put_error_meaning("This is an unknown error!");
    }
}

function get_url() {
    return window.location.href;
}

function get_err_nb(url) {
    var nb = url.split("?=");
    return nb[1];
}

function process_err(override_id) {
    var url = get_url();
    var err_nb = get_err_nb(url);
    if (err_nb === "404") {
        redirect(err_nb);
    }
    console.log(url);
    document.getElementById(override_id).innerHTML = err_nb;
    meaning(err_nb);
}

function redirect(err_id) {
    if (err_id === "404") {
        window.location = "./errornf/error404.html";
    }
}

process_err("number");
