var swiper = new Swiper(".swiper-container", {
  slidesPerView: 5,
  spaceBetween: 30,
  scrollbar: {
    el: ".swiper-scrollbar",
    hide: true,
  },
});
var swiper = new Swiper(".swiper-container--genres", {
  slidesPerView: 4,
  spaceBetween: 30,
  cssMode: true,
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  mousewheel: false,
  keyboard: false,
});
var swiper = new Swiper(".swiper-container--artists", {
  slidesPerView: 6,
  spaceBetween: 30,
  cssMode: true,
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  mousewheel: false,
  keyboard: false,
});
var swiper = new Swiper(".swiper-related", {
  slidesPerView: 6,
  spaceBetween: 30,
  cssMode: true,
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  mousewheel: false,
  keyboard: false,
});
var swiper = new Swiper(".cube-swiper", {
  effect: "cube",
  grabCursor: true,
  autoplay: {
    delay: 2500,
    disableOnInteraction: false,
  },
  cubeEffect: {
    shadow: true,
    slideShadows: true,
    shadowOffset: 20,
    shadowScale: 0.94,
  },
  pagination: {
    el: ".swiper-pagination",
  },
});
