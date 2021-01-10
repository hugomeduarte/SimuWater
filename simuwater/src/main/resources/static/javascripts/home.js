var name;
window.onload = async function() {
name = sessionStorage.getItem("name");



document.getElementById("result").innerHTML = name;


}