warning: in the working copy of 'ANIMATION/TEXT/_animation text with stylus copy/style.css', LF will be replaced by CRLF the next time Git touches it
[1mdiff --git a/ANIMATION/TEXT/_animation text with stylus copy/styl/animation.styl b/ANIMATION/TEXT/_animation text with stylus copy/styl/animation.styl[m
[1mindex 1c54155..9aa1cfd 100644[m
[1m--- a/ANIMATION/TEXT/_animation text with stylus copy/styl/animation.styl[m	
[1m+++ b/ANIMATION/TEXT/_animation text with stylus copy/styl/animation.styl[m	
[36m@@ -7,12 +7,14 @@[m [manimation(arg = 1)[m
 [m
 nnn(arg = 1)[m
     l = 0[m
[31m-    t = 0[m
     for i in (1..arg)[m
         >div:nth-child({i})[m
             z-index i[m
             position absolute[m
[31m-            left (l) px[m
[31m-            top  (t) px[m
[31m-        l += 20[m
[31m-        t += 10[m
[32m+[m[32m            left (l ) px[m
[32m+[m[32m            top 0px[m
[32m+[m[32m        l += 30[m
[32m+[m[32m        >div:nth-child(even)[m
[32m+[m[32m            top 10px[m
[32m+[m[32m            opacity: 0.7;[m
[41m+            [m
[1mdiff --git a/ANIMATION/TEXT/_animation text with stylus copy/styl/style.styl b/ANIMATION/TEXT/_animation text with stylus copy/styl/style.styl[m
[1mindex b4c6923..52d95b3 100644[m
[1m--- a/ANIMATION/TEXT/_animation text with stylus copy/styl/style.styl[m	
[1m+++ b/ANIMATION/TEXT/_animation text with stylus copy/styl/style.styl[m	
[36m@@ -5,7 +5,7 @@[m
 body [m
     background color-background[m
     position-center()[m
[31m-    nnn(2)[m
[32m+[m[32m    nnn(100)[m
     .container[m
          font-size font-size-text[m
          color color-text //  border border-size  //  padding text-padding[m
[36m@@ -18,3 +18,4 @@[m [mbody[m
             visibility hidden[m
         animation(14)[m
 [m
[41m+[m
[1mdiff --git a/ANIMATION/TEXT/_animation text with stylus copy/style.css b/ANIMATION/TEXT/_animation text with stylus copy/style.css[m
[1mindex 49ba349..913dbf0 100644[m
[1m--- a/ANIMATION/TEXT/_animation text with stylus copy/style.css[m	
[1m+++ b/ANIMATION/TEXT/_animation text with stylus copy/style.css[m	
[36m@@ -11,11 +11,999 @@[m [mbody >div:nth-child(1) {[m
   left: 0px;[m
   top: 0px;[m
 }[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
 body >div:nth-child(2) {[m
   z-index: 2;[m
   position: absolute;[m
[31m-  left: 20px;[m
[32m+[m[32m  left: 30px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(3) {[m
[32m+[m[32m  z-index: 3;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 60px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(4) {[m
[32m+[m[32m  z-index: 4;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 90px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(5) {[m
[32m+[m[32m  z-index: 5;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 120px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(6) {[m
[32m+[m[32m  z-index: 6;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 150px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(7) {[m
[32m+[m[32m  z-index: 7;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 180px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(8) {[m
[32m+[m[32m  z-index: 8;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 210px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(9) {[m
[32m+[m[32m  z-index: 9;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 240px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(10) {[m
[32m+[m[32m  z-index: 10;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 270px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(11) {[m
[32m+[m[32m  z-index: 11;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 300px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(12) {[m
[32m+[m[32m  z-index: 12;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 330px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(13) {[m
[32m+[m[32m  z-index: 13;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 360px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(14) {[m
[32m+[m[32m  z-index: 14;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 390px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(15) {[m
[32m+[m[32m  z-index: 15;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 420px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(16) {[m
[32m+[m[32m  z-index: 16;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 450px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(17) {[m
[32m+[m[32m  z-index: 17;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 480px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(18) {[m
[32m+[m[32m  z-index: 18;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 510px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(19) {[m
[32m+[m[32m  z-index: 19;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 540px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(20) {[m
[32m+[m[32m  z-index: 20;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 570px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(21) {[m
[32m+[m[32m  z-index: 21;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 600px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(22) {[m
[32m+[m[32m  z-index: 22;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 630px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(23) {[m
[32m+[m[32m  z-index: 23;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 660px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(24) {[m
[32m+[m[32m  z-index: 24;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 690px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(25) {[m
[32m+[m[32m  z-index: 25;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 720px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(26) {[m
[32m+[m[32m  z-index: 26;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 750px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(27) {[m
[32m+[m[32m  z-index: 27;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 780px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(28) {[m
[32m+[m[32m  z-index: 28;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 810px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(29) {[m
[32m+[m[32m  z-index: 29;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 840px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(30) {[m
[32m+[m[32m  z-index: 30;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 870px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(31) {[m
[32m+[m[32m  z-index: 31;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 900px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(32) {[m
[32m+[m[32m  z-index: 32;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 930px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(33) {[m
[32m+[m[32m  z-index: 33;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 960px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(34) {[m
[32m+[m[32m  z-index: 34;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 990px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(35) {[m
[32m+[m[32m  z-index: 35;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 1020px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(36) {[m
[32m+[m[32m  z-index: 36;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 1050px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(37) {[m
[32m+[m[32m  z-index: 37;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 1080px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(38) {[m
[32m+[m[32m  z-index: 38;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 1110px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(39) {[m
[32m+[m[32m  z-index: 39;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 1140px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(40) {[m
[32m+[m[32m  z-index: 40;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 1170px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(41) {[m
[32m+[m[32m  z-index: 41;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 1200px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(42) {[m
[32m+[m[32m  z-index: 42;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 1230px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(43) {[m
[32m+[m[32m  z-index: 43;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 1260px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(44) {[m
[32m+[m[32m  z-index: 44;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 1290px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(45) {[m
[32m+[m[32m  z-index: 45;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 1320px;[m
[32m+[m[32m  top: 0px;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(even) {[m
[32m+[m[32m  top: 10px;[m
[32m+[m[32m  opacity: 0.7;[m
[32m+[m[32m}[m
[32m+[m[32mbody >div:nth-child(46) {[m