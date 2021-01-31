var userId;
window.onload = async function() {
    userId = sessionStorage.getItem("user");
    try {
        let users = await $.ajax({
            url: `/api/users/${userId}`,
            method: "get",
            dataType: "json"
        });
        document.getElementById("username").innerHTML ='Olá, '+users.name;
        
            let residences = await $.ajax({
                url: `/api/users/${userId}/registries`,
                method: "get",
                dataType: "json"
            });
            let html="";
            for (let residence of residences) {
                html+= "<option value="+residence.residenciaId+">"+residence.morada+
                    "</option>";
            }
            document.getElementById("residences").innerHTML = html;
        
            let activities = await $.ajax({
                url: "/api/activities",
                method: "get",
                dataType: "json"
            });
            let html2="";
            for (let activity of activities) {
                html2+= "<option value="+activity.id+">"+activity.name+
                    "</option>";
            }
            document.getElementById("atividades").innerHTML = html2;


    } catch (err) {
        console.log(err);
        // mensagem de erro para o utilizador      
    }
}


async function addActivity() {
userId = sessionStorage.getItem("user");

try {
    let residenceId = document.getElementById("residences").value;
    let registry = await $.ajax({
        url: `/api/users/${userId}/residences/${residenceId}/registries`,
        method: "get",
        dataType: "json"
    });

    let addactivity = {
        registries: {id:registry.registoId},
        activities: {id:document.getElementById("atividades").value},
        time: document.getElementById("time").value,
        date: new Date(),

        
    }
    console.log(JSON.stringify(addactivity));
    let result = await $.ajax({
        url: "/api/consumptions/",
        method: "post",
        dataType: "json",
        data:JSON.stringify(addactivity),
        contentType: "application/json"
    });
    console.log(JSON.stringify(result));
    
    atividadeId = document.getElementById("atividades").value;
    tempo = document.getElementById("time").value;


    let consumptions = await $.ajax({
        url: `/api/consumptions/${tempo}/${atividadeId}`,
        method: "get",
        dataType: "json",
    });
    console.log(JSON.stringify(consumptions));
    let html3="";
    for (let consumption of consumptions) {
        html3="Acrescentado um consumo de "+consumption.consumos+" litros na atividade "+consumption.nome+" no dia "+consumption.data;
    }
    document.getElementById("resultado").innerHTML = html3;
 



} catch(err) {
    console.log(err);
    // mensagem para o utilizador
}



}









