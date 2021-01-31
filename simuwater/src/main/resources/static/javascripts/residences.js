var userId;
window.onload = async function() {
    userId = sessionStorage.getItem("user");
    let elem = document.getElementById("residences");
    try {
        let users = await $.ajax({
            url: `/api/users/${userId}`,
            method: "get",
            dataType: "json"
        });
        document.getElementById("username").innerHTML ='Residências de '+users.name;
        
        let residences = await $.ajax({
            url: `/api/users/${userId}/registries`,
            method: "get",
            dataType: "json"
        });
        let html2 ="";
            for(let residence of residences)
            html2 += "Tipo: "+residence.tipo+
            " Morada: "+residence.morada+
            " Número: "+residence.numero+
            " Escalão: "+residence.escalao+
            "<br>";
            elem.innerHTML = html2;

           

    } catch (err) {
        console.log(err);
        // mensagem de erro para o utilizador      
    }

}