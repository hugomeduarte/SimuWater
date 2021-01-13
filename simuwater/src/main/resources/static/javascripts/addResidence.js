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


async function addResidence() {
    try {
        let residence = {
            adress: document.getElementById("adress").value,
            user: { id: parseInt(document.getElementById("user").value) }
        }
        console.log(JSON.stringify(residence));
        let result = await $.ajax({
            url: "/api/residences",
            method: "post",
            dataType: "json",
            data:JSON.stringify(residence),
            contentType: "application/json"
        });
        console.log(JSON.stringify(result));
        // Change to album page
        sessionStorage.setItem("albumId",result.id);
        window.location = "album.html";
    } catch(err) {
        console.log(err);
        // mensagem para o utilizador
    }
}