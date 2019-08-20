
const reviewTitle = document.querySelector("#arena_title");
const reviewDescrition = document.querySelector("#arena_description");
const reviewPhoto = document.querySelector("#arena_photo");
const reviewPrice = document.querySelector("#arena_price");
const reviewBtn = document.querySelector(".review-btn");

const modalTitle = document.querySelector(".title-modal");
const modalDescrition = document.querySelector(".description-modal");
const modalPhoto = document.querySelector(".photo-modal");
const modalPrice = document.querySelector(".price-modal");

const reviewArena = () => {
  if (reviewBtn) {
     reviewBtn.addEventListener('click', () => {
    modalTitle.innerText = reviewTitle.value;
    console.log(reviewTitle.value);
    modalDescrition.innerText = reviewDescrition.value;
    modalPrice.innerText = reviewPrice.value;
    })
  }




}



export { reviewArena }
