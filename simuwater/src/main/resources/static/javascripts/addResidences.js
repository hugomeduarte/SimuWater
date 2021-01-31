var userId;

window.onload = async function() {
    userId = sessionStorage.getItem("user");
    try {
        let users = await $.ajax({
            url: `/api/users/${userId}`,
            method: "get",
            dataType: "json"
        });
        document.getElementById("username").innerHTML ='Adicionar residência a '+users.name;
        
    } catch (err) {
        console.log(err);
        // mensagem de erro para o utilizador      
    }

}

async function addResidence() {
    userId = sessionStorage.getItem("user");
    try {
        let addresidence = {
            adress: document.getElementById("morada").value,
            number: document.getElementById("numero").value,
            residencetype: document.querySelector("input[name='radio']:checked").value,
            escalao: document.getElementById("escalao").value,
            
        }
        alert(JSON.stringify(addresidence));
        let result = await $.ajax({
            url: "/api/residences/",
            method: "post",
            dataType: "json",
            data:JSON.stringify(addresidence),
            contentType: "application/json"
        });
        console.log(JSON.stringify(result));

        let registries = {
            userId:userId,
            residenceId:result.id,
            user:{id:userId},
            residence:{id:result.id},
        }
        console.log(JSON.stringify(registries));
        let result2 = await $.ajax({
            url: `/api/users/${userId}/residences`,
            method: "post",
            dataType: "json",
            data:JSON.stringify(registries),
            contentType: "application/json"
        });
        console.log(JSON.stringify(result2));

    // Change to home page
    sessionStorage.setItem("resId",result.id);
    window.location = "home.html";


    } catch(err) {
        console.log(err);
        // mensagem para o utilizador
    }


   





}