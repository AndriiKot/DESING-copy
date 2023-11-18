'use strict'

const body = document.querySelector('body');
const forms = document.querySelector('.rang');
const buttonRandom = document.querySelector('.button-random');
const buttonReset = document.querySelector('.button-reset');
const buttonRedColor = document.querySelector(".colors-red");
const buttonGreenColor = document.querySelector('.colors-green');
const buttonBlueColor = document.querySelector('.colors-blue');

const arrayInputsVariables = [red,green,blue];
const arrayButtonsColors = [buttonRedColor,buttonGreenColor,buttonBlueColor];
const nodeListSVGunclock = document.querySelectorAll('.unclock');
const nodeListSVGclock = document.querySelectorAll('.clock');

buttonRandom.addEventListener('click',randomValues);
buttonReset.addEventListener('click',resetValues);


for(let i = 0; i < arrayButtonsColors.length; i++){
  arrayButtonsColors[i].addEventListener('click',buttonColorValueSave(arrayInputsVariables[i]));
  arrayButtonsColors[i].addEventListener('click',closeAndOpenClock);
}

function defaultClockValue() {
  for(let i = 0; arrayButtonsColors.length > i; i++){
    arrayButtonsColors[i].children[1].style.display = 'none';
    arrayButtonsColors[i].children[0].style.display = 'inline-block';
  }
}



function closeAndOpenClock(e) {
  const upclock = e.currentTarget.children[0];
  const clock = e.currentTarget.children[1];
  if(validInputColor() === false) {
    return;
  }

  if (getComputedStyle(upclock).display == 'inline-block' || getComputedStyle(upclock).display == 'block' ) {
    upclock.style.display = 'none';
  } else {
   upclock.style.display = 'inline-block';
   arrayInputsVariables[arrayButtonsColors.indexOf(e.currentTarget)].disabled = false;
  }

  if (getComputedStyle(clock).display == 'inline-block' || getComputedStyle(clock).display == 'block') {
    clock.style.display = 'none';
  } else {
    clock.style.display = 'inline-block';
  }
}

function randomValues(e) {
  randomValuesVALID();
}

function randomValuesVALID() {
  for(let i = 0; i < arrayInputsVariables.length; i++){
    if(!arrayInputsVariables[i].disabled){ 
      arrayInputsVariables[i].value = randomInteger(0,255);
    }
  }
};

function resetValues() {
for(let i = 0; i < arrayInputsVariables.length; i++){
  arrayInputsVariables[i].value = '';
  arrayInputsVariables[i].disabled = false;
  buttonRandom.disabled = false;
  defaultClockValue();
}
  defaultDiagram.draw();
  if(validInputColor() === false) {
    return;
  } else {
  defaultClockValue();
  }
};

function buttonColorValueSave(buttonColor) {
 const fn = function (_e,arg = buttonColor) {
  if(arg.value){
  arg.disabled = true;
  if(red.disabled === true && green.disabled === true && blue.disabled == true){
    buttonRandom.disabled = true;
    return;
  }

  } else {
    return;
  }
 }
 return fn;
};

function validInputColor() {
  if(red.value == false && green.value == false && blue.value == false){
    return false;
  }
  return true;
}; 

const RGBToHSL = (red, green, blue) => {
    red /= 255; 
    green /= 255; 
    blue /= 255;

    const l = Math.max(red, green, blue);
    const s = l - Math.min(red, green, blue);
    const h = s
      ? l === red
        ? (green - blue) / s
        : l === green
        ? 2 + (blue - red) / s
        : 4 + (red - green) / s
      : 0;
    return [
      60 * h < 0 ? 60 * h + 360 : 60 * h,
      100 * (s ? (l <= 0.5 ? s / (2 * l - s) : s / (2 - (2 * l - s))) : 0),
      (100 * (2 * l - s)) / 2,
    ];
};

const randomInteger = (min,max) =>{
  let rand = min + Math.random() * (max + 1 - min);
  return Math.floor(rand);
}


const activeBackground = (r,g,b) => {
  Object.assign(document.documentElement, {
    style: `
      --rgb-red: ${r};
      --rgb-green: ${g};
      --rgb-blue: ${b};  
    `
  });
};

const colorText = (element,r,g,b) => {
  const hsl = RGBToHSL(r,g,b);
  hsl[2] = hsl[2] > 50 ? 0 : 100;
  const h = String(hsl[0]);
  const s = String(hsl[1]) + '%';
  const l = String(hsl[2]) + '%';
  element.style.color = `hsl(${h} ${s} ${l})`;
};

const colorValid = (color) => {
  if(color >= 10 && color <= 255) {
    return color;
  }
  return '0';
};

const colorRang = (event) => {
  event.preventDefault();
  const r = colorValid(red.value);
  const g = colorValid(green.value);
  const b = colorValid(blue.value);
  activeBackground(r,g,b);
  colorText(body,r,g,b);
  const myDiagram = new Diagram({
    canvas: diagramCanvas,
    data: getColorsValuesToInteger,
    colors: colorShade(),
  });
  myDiagram.draw();
};

const getColorsValuesToInteger = () => {
  const values = {
  red: Number(red.value) || 0,
  green: Number(green.value) || 0,
  blue: Number(blue.value) || 0,
  };
  return values;
};

const colorShade = () => {
  const arrColorsValue = Object.values(getColorsValuesToInteger());
  const arrColorShade = [];
  const red = `rgb(${arrColorsValue[0]},0,0)`;
  const green = `rgb(0,${arrColorsValue[1]},0)`;
  const blue = `rgb(0,0,${arrColorsValue[2]})`;
  arrColorShade.push(red,green,blue);
  return arrColorShade;
};


forms.addEventListener('submit',colorRang);

// Canvas

const drawLine = (startX,startY,endX,endY,ctx) => {
  ctx.beginPath();
  ctx.moveTo(startX,startY);
  ctx.lineTo(endX,endY);
  ctx.stroke();
};

const drawArc = (centerX,centerY,startAngle,endAngle,radius,ctx) => {
  ctx.beginPath();
  ctx.arc(centerX,centerY,startAngle,endAngle,radius);
  ctx.stroke();
};

const drawSlice = (centerX,centerY,startAngle,endAngle,radius,ctx,color) => {
  ctx.fillStyle = color;
  ctx.beginPath();
  ctx.moveTo(centerX,centerY);
  ctx.arc(centerX,centerY,radius,startAngle,endAngle);
  ctx.closePath();
  ctx.fill();
};

class Diagram {
  constructor(options){
    this.canvas = options.canvas;
    this.ctx = this.canvas.getContext('2d');
    this.colors = options.colors;
    this.data = options.data;
  };
    draw() {
      let total_value = 0;
      let color_index = 0;
      const colors = this.data();

      for(const color in colors){
          const val = colors[color];
          total_value += val;
      }  

      let start_angle = 0;

      for(const color in colors){
          const val = colors[color];
          let slice_angle = 2 * Math.PI * val / total_value; 

          drawSlice(
              this.canvas.width / 2,
              this.canvas.height /2,
              start_angle,
              start_angle + slice_angle,
              Math.min(this.canvas.width/2,this.canvas.height/2),
              this.ctx,
              this.colors[color_index%this.colors.length],
          );
          start_angle += slice_angle;
          color_index++;
        } 
    }
};

const defaultColorValue = () => {
  const defaultColorValue = getColorsValuesToInteger(); 
  defaultColorValue.white = 1;
  return defaultColorValue;
};

const defaultDiagram = new Diagram({
  canvas: diagramCanvas,
  data: defaultColorValue,
  colors: ['white'],
});

defaultDiagram.draw();


















