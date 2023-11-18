"use strict"

const body = document.body;
const buttonStart = document.querySelector('.start');
const container = document.querySelector('.container');

buttonStart.addEventListener('click',createGridElements);

function createGridElement(number = 0) {
  const gridElement = `
  <div class="wrapper-${number}">
      <div class="box-animation"></div>
  </div>
  `;  
  return gridElement;
};


function createGridElements(numberOfElements = 0) {

    const [x,y] = [Number(gridAxisX.value),Number(gridAxisY.value)];
    
    if(validValues(x,y)) { return; };
   
    numberOfElements = x * y;
   
    const sizeConrainer = window.innerWidth / Number(gridAxisX.value);
    const repeatGridView = (sizeConrainer * 0.9);
    const sizeGap = ((sizeConrainer - repeatGridView));
   
    (Object.assign(document.documentElement, {
     style: `
       --size-container: ${sizeConrainer}px;
       --repeat-grid-view: ${repeatGridView}px;
       --rep: ${x};
       --gap: ${sizeGap}px;
     `
     }));
   
     let fullElements = ``;  
   
     for(let i = 1; i <= numberOfElements; i++){
       const element = createGridElement(i);
   
       fullElements += element;
     };
   
     container.innerHTML = fullElements;
     
     const elements = document.querySelectorAll('.box-animation');
     const sizeElements = elements.length;
   
     for(let i=0; sizeElements > i; i++){
       calc_animation_rotate(elements[i]);
     };
}

function randomInteger(min,max){
    let rand = min + Math.random() * (max + 1 - min);
    return Math.floor(rand);
};

function randomValueRange(){
   return randomInteger(0,255);
};

function getRandomColros(){
    const r = randomValueRange();
    const g = randomValueRange();
    const b = randomValueRange();
    return [r,g,b];
};

function color() {
  const [r,g,b] = getRandomColros();
  return `rgb(${r},${g},${b})`;
};

function calc_animation_rotate(element,deg,str,final_str = ''){
  deg = getDEG();
  str = getSTR();
  final_str = `linear-gradient(${deg}deg,${str}`;
  final_str = final_str.slice(0,final_str.length-1)+')';
  element.style.background = final_str;
};

function getDEG(int = 20){
  int = randomInteger(0,360);
  return int;
};

function getWidthLine(int = 30){
  int = randomInteger(1,80);
  return int;
};


function getSTR(color_end ='transparent',
                max_procent_width_line = 100,
                step_procent_width_line = 30) {

  step_procent_width_line = getWidthLine();               
  const color_start = color();
  let procent_width_line = 0;
  let str = '';
  
  let i = 0;
  
  for (;procent_width_line <= max_procent_width_line;i++){
   const a = `${color_start} ${procent_width_line}%`;
   const b = `${color_end} ${procent_width_line}%`;
   const compon_str = (i % 2 == 0) ? a +','+ b : b + ',' + a;
    
    str += compon_str +',';
    procent_width_line += step_procent_width_line;
  };
  return str;
};

function validValues(x,y){
  if((x > 10 || y > 10) || (x < 1 || y < 1)) { 
  return true;
 };
};  
  