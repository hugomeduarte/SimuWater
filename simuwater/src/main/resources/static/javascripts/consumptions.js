var userId;
window.onload = async function() {
    userId = sessionStorage.getItem("user");
    try {
        let users = await $.ajax({
            url: `/api/users/${userId}`,
            method: "get",
            dataType: "json"
        });
        document.getElementById("username").innerHTML ='Consumos de '+users.name;

        let residences = await $.ajax({
            url: `/api/users/${userId}/registries`,
            method: "get",
            dataType: "json"
        });
        console.log(JSON.stringify(residences));
        let html ="";
         for (let residence of residences) {
         html+= "<option value="+residence.residenciaId+">"+residence.morada+
        "</option>";
        }
        document.getElementById("residences").innerHTML = html;
        residenceId = document.getElementById("residences").value;
        loadConsumptions();
        

    } catch (err) {
        console.log(err);
        // mensagem de erro para o utilizador      
    }
}

async function loadConsumptions() {
    try {
        let residenceId = document.getElementById("residences").value;
        let registry = await $.ajax({
            url: `/api/users/${userId}/residences/${residenceId}/registries`,
            method: "get",
            dataType: "json"
        });
        console.log(JSON.stringify(registry));
        registryId=registry.registoId;
        let consumptions = await $.ajax({
            url: `/api/consumptions/${registryId}/registries`,
            method: "get",
            dataType: "json"
        });
        console.log(JSON.stringify(consumptions));
        let consumptionsdia = await $.ajax({
            url: `/api/consumptions/sum/${registryId}`,
            method: "get",
            dataType: "json"
        });
        console.log(JSON.stringify(consumptionsdia));

        showConsumptionToday(consumptionsdia);
        showConsumptions(consumptions);
    } catch(err) {
        console.log(err);
    }
}

function showConsumptions(consumptions) {
    let elem = document.getElementById("consumptions");
    let html2 ="";
            for(let consumption of consumptions)
            html2 += "Data: "+consumption.data+
            " Consumo(l): "+consumption.consumos+
            " Atividade: "+consumption.nome+
            " Tempo(m): "+consumption.tempo+
            "<br>";
            elem.innerHTML = html2;
}

function showConsumptionToday(consumptionsdia) {
    let elem3 = document.getElementById("consumodia");
    let html3 ="";
            for(let dia of consumptionsdia)
            if(dia.consumos>150) {
            html3 ="Consumo de hoje: "+dia.consumos+" litros, o que está acima dos parâmetros da ONU";
            elem3.innerHTML = html3;
            }
            else {
                html3 ="Consumo de hoje: "+dia.consumos+" litros, o que está dentro dos parâmetros da ONU";
            elem3.innerHTML = html3;
            }
            
}


async function Filtrar() {

    try {
        loadConsumptions();

    } catch (err) {
        console.log(err);
        // mensagem de erro para o utilizador      
    }

}


