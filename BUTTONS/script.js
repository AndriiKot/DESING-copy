'use strict';

const btnCount = document.querySelector('.count-1');
const btn1 = document.querySelector('.b-1');
const btn2 = document.querySelector('.b-2');
let count = 0;
btnCount.textContent = count;

btn1.addEventListener('click', fnPlusOne);
btn2.addEventListener('click', fnMinusOne);

function fnPlusOne() {
  count++;
  btnCount.textContent = count;
}

function fnMinusOne() {
  count > 0 ? count-- : 0;
  btnCount.textContent = count;
}
