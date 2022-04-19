
searchfrom = document.querySelector('.search-text');

document.querySelector('#search-btn').onclick = () =>{
    searchfrom.classList.toggle('active');
}
let loginform = document.querySelector('.login-form-container');
document.querySelector("#login-btn").onclick = () =>{
    loginform.classList.toggle('active');
}
document.querySelector("#close-login-btn" ).onclick = () =>{
    loginform.classList.toggle('active');
}


window.onscroll = ( ) =>{
    searchfrom.classList.remove('active');
    if(window.scrollY > 80){
        document.querySelector('.header .head').classList.add('active');
    }else{
        document.querySelector('.header .head').classList.remove('active');
    }
}
window.onload = ( ) =>{
    if(window.scrollY > 80){
        document.querySelector('.header .head').classList.add('active');
    }else{
        document.querySelector('.header .head').classList.remove('active');
    }
}
