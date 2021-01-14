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
        document.getElementById("users").innerHTML = html;
    } catch (err) {
        console.log(err);
        // mensagem de erro para o utilizador      
    }

    try {
        let residences = await $.ajax({
            url: "/api/residences",
            method: "get",
            dataType: "json"
        });
        let html="";
        for (let residence of residences) {
            html+= "<option value="+residence.id+">"+residence.adress+
                "</option>";
        }
        document.getElementById("residences").innerHTML = html;
    } catch (err) {
        console.log(err);
        // mensagem de erro para o utilizador      
    }

    /*try {
        let activitiess = await $.ajax({
            url: "/api/activities",
            method: "get",
            dataType: "json"
        });
        let html="";
        for (let activities of activitiess) {
            html+= "<option value="+activities.id+">"+activities.id+
                "</option>";
        }
        document.getElementById("activities").innerHTML = html;
    } catch (err) {
        console.log(err);
        // mensagem de erro para o utilizador      
    }
    */

}

async function addResidence() {
    try {
        let activities = {
            banho: document.getElementById("banho").value,
            loica: document.getElementById("loica").value,
            roupa: document.getElementById("roupa").value,
            higiene: document.getElementById("higiene").value,
            cozinhados: document.getElementById("cozinhados").value,
        }
        console.log(JSON.stringify(activities));
        let result = await $.ajax({
            url: "/api/activities",
            method: "post",
            dataType: "json",
            data:JSON.stringify(activities),
            contentType: "application/json"
        });
        console.log(JSON.stringify(result));

    // Change to index page
    sessionStorage.setItem("registo",result);
    window.location = "index.html";

    } catch(err) {
        console.log(err);
        // mensagem para o utilizador
    }



}