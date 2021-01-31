window.onload = async function() {
    try {
        let users = await $.ajax({
            url: "/api/users",
            method: "get",
            dataType: "json"
        });
        let html="";
        for (let user of users) {
            html+= "<option value="+user.id+">"+user.name+
                "</option>";
        }
        document.getElementById("user").innerHTML = html;
    } catch (err) {
        console.log(err);
        // mensagem de erro para o utilizador      
    }

}

async function login() {

    user = document.getElementById("user").value;
    userId=parseInt(user);
    sessionStorage.setItem("user",userId);
    window.location = "home.html";

}
