
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
var swiper = new Swiper(".home-slider", {
  centeredSlides: true,
  loop:true,
  autoplay: {
    delay: 9500,
    disableOnInteraction: false,
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
});

var swiper = new Swiper(".featured-slider", {
  centeredSlides: true,
  loop:true,
  spaceBetween:20,
  autoplay: {
    delay: 9500,
    disableOnInteraction: false,
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  breakpoints: {
    0: {
      slidesPerView: 1,
    },
    450: {
      slidesPerView: 2,
    },
    768: {
      slidesPerView: 3,
    },
    1200: {
      slidesPerView: 4,
    },
  },
});

var swiper = new Swiper(".review-slide", {
  loop:true,
  spaceBetween:20,
  autoplay: {
    delay: 9500,
    disableOnInteraction: false,
  },
  breakpoints: {
    0: {
      slidesPerView: 1,
    },
    768: {
      slidesPerView: 2,
    },
  },
});

var preloader = document.getElementsByClassName('loader');

function myfunction(){
    preloader.style.display = 'none';
}