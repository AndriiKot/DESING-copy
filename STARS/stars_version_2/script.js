﻿"use strict"

const body = document.body;
const buttonRESET = document.querySelector(".reset");
const buttonSubmit = document.querySelector('.submit');
let quantityStarsDefault = 7;                        
let is_main_active_star = false;
let FullElement;
let inputValue;



buttonRESET.addEventListener('click',clickedOnButtonReset);
buttonSubmit.addEventListener('click',clickSubmitButton);


function  clickedOnButtonReset() {

  if (is_main_active_star === false){return};

  const active_star = document.querySelector('.main-active-star');
  active_star.classList.remove('main-active-star');
  is_main_active_star = false;
};

const createStar = (starNumberMin = 3) => {
  const div = document.createElement('div');     
  div.className = `star-${starNumberMin}`;
  div.innerHTML = `
  <a href="#">
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 59.93">
      <defs>
        <style>.cls-2{fill:#fff;opacity:0.4;}</style>
      </defs>
      <g>
        <path class="cls-1" d="M33.93,1.18l8.72,17.34,19.5,2.78a2.1,2.1,0,0,1,1.19,3.61L49.24,38.4l3.33,19.06a2.15,2.15,0,0,1-3.13,2.23L32,50.69l-17.44,9a2.15,2.15,0,0,1-3.13-2.23L14.76,38.4.65,24.9A2.1,2.1,0,0,1,1.85,21.3l19.5-2.78L30.07,1.18A2.17,2.17,0,0,1,33.93,1.18Z"/>
        <path class="cls-2" d="M51.43,26c-16,1.5-29,11.41-32.29,24.27l-.05,0,2.46-14.1-10.45-10,14.44-2.07L32,11.35l6.46,12.83Z"/>
      </g>
    </svg>
   </a> 
   `;
   return div;
};

const createStars = (wrapper,numberOfelem) => {
  for(let i = numberOfelem; i > 0; i--){
    const star = createStar(i);
    wrapper.appendChild(star);
  };
};


const createFullElement = (quantityStars = quantityStarsDefault) => {
  const div = document.createElement('div');     
  div.className = 'wrapper';  

  createStars(div,quantityStars);
  body.appendChild(div);

  const nodeListStars = document.querySelectorAll('[class^="star"]');
  for(const item of nodeListStars){
    item.addEventListener("click",clickedOnStar);
  }
};

const AddClassNameActiveStar = (event) => {
  event.currentTarget.classList.add("main-active-star");
};

const firstClickOnStar = (e) => {
  AddClassNameActiveStar(e);
  is_main_active_star = true
};

const clickedOnStar = (e) => {
  if (is_main_active_star === false){
    firstClickOnStar(e);
    return;
  }

  const className = e.currentTarget.className;
  if (className.includes("main-active-star")){
    return;
  }


  const active_star = document.querySelector('.main-active-star');
  active_star.classList.remove('main-active-star');
  AddClassNameActiveStar(e);
};


createFullElement();


function clickSubmitButton(event) {
  FullElement = document.querySelector('.wrapper').childNodes;
  inputValue = Number(document.querySelector("input[type='number']").value);

  const lengthElement = FullElement.length;

  if(lengthElement === inputValue) { return };

  const cycle = (lengthElement > inputValue) ? lengthElement - inputValue : inputValue - lengthElement;
  
  if(lengthElement > inputValue){
     let removeActivStar = false;
     for(let i = 0; i < cycle; i++){
      let element = FullElement[0];
      if(element.classList.contains('main-active-star')){
         removeActivStar = true;
      }
        FullElement[0].remove();
     }
     if(removeActivStar){FullElement[0].classList.add('main-active-star')};
  } else {
    const wrapper = document.querySelector('.wrapper');

    for(let i = 0; i < cycle; i++){
       const star = createStar(lengthElement + i + 1);
       wrapper.prepend(star);
       star.addEventListener("click",clickedOnStar);
    }
  }  
};























