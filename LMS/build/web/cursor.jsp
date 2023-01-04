<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="shorcut icon" type="image/png" href="img/favicon.png">
  <title></title>
  <style>
 

.cursor{
  position: fixed;
  width: 50px;
  height: 50px;
  border: 1px solid #c6c6c6;
  border-radius: 50%;
  left: 0;
  top: 0;
  pointer-events: none;
  transform: translate(-50%, -50%);
  transition: .1s;
}

.cursor2{
  position: fixed;
  width: 8px;
  height: 8px;
  background-color: #c6c6c6;
  border-radius: 50%;
  left: 0;
  top: 0;
  pointer-events: none;
  transform: translate(-50%, -50%);
  transition: .15s;
}

.content:hover ~ .cursor{
  transform: translate(-50%, -50%) scale(1.5);
  background-color: #c6c6c6;
  opacity: .5;
}

.content:hover ~ .cursor2{
  opacity: 0;
}


            ::-webkit-scrollbar {
                width: 10px;
            }

            ::-webkit-scrollbar-track {
                background: #f1f1f1;
            }


            ::-webkit-scrollbar-thumb {
                background:linear-gradient(to right, #fc4a1a, #f7b733);

            }


            ::-webkit-scrollbar-thumb:hover {
                background: #555;
            }
       
  </style>
</head>
<body>

  <div class="cursor"></div>
  <div class="cursor2"></div>

  <script>
    var cursor = document.querySelector(".cursor");
    var cursor2 = document.querySelector(".cursor2");
    document.addEventListener("mousemove",function(e){
      cursor.style.cssText = cursor2.style.cssText = "left: " + e.clientX + "px; top: " + e.clientY + "px;";
    });
  </script>
</body>
</html>