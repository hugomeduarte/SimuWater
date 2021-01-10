window.onload = async function() {
    let name = document.getElementById("name").value;
     try {
        let users = await $.ajax({
        url: `/api/users/${name}`,
        method: "get",
        dataType: "json"
        });
        let html ="";
        for(let user of users)
            html += `<section onclick='login(${user.name})'>
                ${user.name}</section>`
        elem.innerHTML = html;
    } catch(err) {
        console.log(err);
        elem.innerHTML = "<h1> Page not vailable </h1>";
    }  
}
function login(id) {
    location.href="/home.html";
    sessionStorage.setItem("name",id);
    window.location = "home.html";
}
function loginn() {
    location.href="/home.html";
}



