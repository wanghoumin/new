<%--
  Created by IntelliJ IDEA.
  User: admisnister
  Date: 2019-05-20
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>


<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>passwordpage</title>

    <style>
        body {
            background-color: black;
            overflow: hidden;
        }
        h1 {
            text-align: center;
            color: #FFF;
            position: relative;
            top:  100px;
            font-family: sans-serif;
            font-size: 48px;
            margin: 0;
            letter-spacing: 9.5px;
        }
        .fireworks {
            height: 100vh;
            width: 100vw;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;

        }
        .fireworks .firework {
            position: relative;
            top: 0px;
            left: 0px;
            margin: 0px 50px;
        }
        .fireworks .firework:before{
            content: "";
            display: block;
            border-radius: 5px;
            background-color: skyblue;
            width: 5px;
            height: 0px;
            will-change: transform;
            -webkit-transform: translateY(1000px);
            transform: translateY(1000px);
            -webkit-animation: fireworkstart 3s ease-out infinite;
            animation: fireworkstart 3s ease-out infinite;

        }
        .fireworks .firework .explosion {
            position: absolute;
            top: 0;
            width: 5px;
            height: 20px;
            opacity: 0;
            -webkit-transform-origin: top center;
            transform-origin: top center;
            will-change: transform;
            -webkit-animation: explosion 0.7s linear 3s infinite;
            animation: explosion 0.7s linear 3s infinite;
        }
        .fireworks .firework .explosion:nth-child(1) {
            -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
        }
        .fireworks .firework .explosion:nth-child(2) {
            -webkit-transform: rotate(90deg);
            transform: rotate(90deg);
        }
        .fireworks .firework .explosion:nth-child(3) {
            -webkit-transform: rotate(180deg);
            transform: rotate(180deg);
        }
        .fireworks .firework .explosion:nth-child(4) {
            -webkit-transform: rotate(-90deg);
            transform: rotate(-90deg);
        }
        .fireworks .firework .explosion:nth-child(5) {
            -webkit-transform: rotate(45deg);
            transform: rotate(45deg);
        }
        .fireworks .firework .explosion:nth-child(6) {
            -webkit-transform: rotate(-45deg);
            transform: rotate(-45deg);
        }
        .fireworks .firework .explosion:nth-child(7) {
            -webkit-transform: rotate(135deg);
            transform: rotate(135deg);
        }
        .fireworks .firework .explosion:nth-child(8) {
            -webkit-transform: rotate(225deg);
            transform: rotate(225deg);
        }

        .fireworks .firework .explosion .spark{
            position: absolute;
            top: 0;
            width: 100%;
            height: 100%;
            border-radius: 5px;
            will-change: transform;
            -webkit-animation: explosion2 0.7s ease-in-out 3s infinite;
            animation: explosion2 0.7s ease-in-out 3s infinite;
        }


        .fireworks .firework .explosion .spark.red {
            background-color: #E91E63;
        }
        .fireworks .firework .explosion .spark.blue {
            background-color: skyblue;
        }
        .fireworks .firework .explosion .spark.green {
            background-color: limegreen;
        }
        .fireworks .firework .explosion .spark.yellow {
            background-color: yellow;
        }
        .fireworks .firework .explosion .spark.purple {
            background-color: purple;
        }
        @-webkit-keyframes fireworkstart{
            0%{
                height: 0px;
                -webkit-transform: translateY(1000px);
                transform: translateY(1000px);
            }
            50%{
                height: 50px;
            }
            75%{
                height: 30px;
            }
            100%{
                height: 0;
                -webkit-transform: translateY(0);
                transform: translateY(0);
            }
        }
        @keyframes fireworkstart{
            0%{
                height: 0px;
                -webkit-transform: translateY(1000px);
                transform: translateY(1000px);
            }
            50%{
                height: 50px;
            }
            75%{
                height: 30px;
            }
            100%{
                height: 0;
                -webkit-transform: translateY(0);
                transform: translateY(0);
            }
        }

        @-webkit-keyframes explosion{
            0%{
                height: 0px;
                opacity: 0;
            }
            50%{
                height: 25px;
                opacity: 1;
            }
            100%{
                height: 0px;
                opacity: 0;
            }
        }

        @keyframes explosion{
            0%{
                height: 0px;
                opacity: 0;
            }
            50%{
                height: 25px;
                opacity: 1;
            }
            100%{
                height: 0px;
                opacity: 0;
            }
        }
        @-webkit-keyframes explosion2{
            0%{
                -webkit-transform: translateY(0px);
                transform: translateY(0px);
            }
            50%{
                -webkit-transform: translateY(5px);
                transform: translateY(5px);
            }
            75%{
                -webkit-transform: translateY(50px);
                transform: translateY(50px);
            }
            100%{
                -webkit-transform: translateY(70px);
                transform: translateY(70px);
            }
        }
        @keyframes explosion2{
            0%{
                -webkit-transform: translateY(0px);
                transform: translateY(0px);
            }
            50%{
                -webkit-transform: translateY(5px);
                transform: translateY(5px);
            }
            75%{
                -webkit-transform: translateY(50px);
                transform: translateY(50px);
            }
            100%{
                -webkit-transform: translateY(70px);
                transform: translateY(70px);
            }
        }
    </style>

</head>
<body>

<h1>Congratulations!</h1>

<div class="fireworks">
    <div class="firework">
        <div class="explosion"><div class="spark green"></div></div>
        <div class="explosion"><div class="spark blue"></div></div>
        <div class="explosion"><div class="spark red"></div></div>
        <div class="explosion"><div class="spark red"></div></div>
        <div class="explosion"><div class="spark yellow"></div></div>
        <div class="explosion"><div class="spark blue"></div></div>
        <div class="explosion"><div class="spark green"></div></div>
        <div class="explosion"><div class="spark yellow"></div></div>
    </div>
    <div class="firework" style="margin-top: -70px">
        <div class="explosion"><div class="spark green"></div></div>
        <div class="explosion"><div class="spark blue"></div></div>
        <div class="explosion"><div class="spark red"></div></div>
        <div class="explosion"><div class="spark red"></div></div>
        <div class="explosion"><div class="spark yellow"></div></div>
        <div class="explosion"><div class="spark blue"></div></div>
        <div class="explosion"><div class="spark green"></div></div>
        <div class="explosion"><div class="spark yellow"></div></div>
    </div>
    <div class="firework">
        <div class="explosion"><div class="spark green"></div></div>
        <div class="explosion"><div class="spark blue"></div></div>
        <div class="explosion"><div class="spark red"></div></div>
        <div class="explosion"><div class="spark red"></div></div>
        <div class="explosion"><div class="spark yellow"></div></div>
        <div class="explosion"><div class="spark blue"></div></div>
        <div class="explosion"><div class="spark green"></div></div>
        <div class="explosion"><div class="spark yellow"></div></div>
    </div>
    <div class="firework" style="margin-top: 70px">
        <div class="explosion"><div class="spark green"></div></div>
        <div class="explosion"><div class="spark blue"></div></div>
        <div class="explosion"><div class="spark red"></div></div>
        <div class="explosion"><div class="spark red"></div></div>
        <div class="explosion"><div class="spark yellow"></div></div>
        <div class="explosion"><div class="spark blue"></div></div>
        <div class="explosion"><div class="spark green"></div></div>
        <div class="explosion"><div class="spark yellow"></div></div>
    </div>
    <div class="firework">
        <div class="explosion"><div class="spark green"></div></div>
        <div class="explosion"><div class="spark blue"></div></div>
        <div class="explosion"><div class="spark red"></div></div>
        <div class="explosion"><div class="spark red"></div></div>
        <div class="explosion"><div class="spark yellow"></div></div>
        <div class="explosion"><div class="spark blue"></div></div>
        <div class="explosion"><div class="spark green"></div></div>
        <div class="explosion"><div class="spark yellow"></div></div>
    </div>
    <div class="firework" style="margin-top: -70px">
        <div class="explosion"><div class="spark green"></div></div>
        <div class="explosion"><div class="spark blue"></div></div>
        <div class="explosion"><div class="spark red"></div></div>
        <div class="explosion"><div class="spark red"></div></div>
        <div class="explosion"><div class="spark yellow"></div></div>
        <div class="explosion"><div class="spark blue"></div></div>
        <div class="explosion"><div class="spark green"></div></div>
        <div class="explosion"><div class="spark yellow"></div></div>
    </div>
    <div class="firework">
        <div class="explosion"><div class="spark green"></div></div>
        <div class="explosion"><div class="spark blue"></div></div>
        <div class="explosion"><div class="spark red"></div></div>
        <div class="explosion"><div class="spark red"></div></div>
        <div class="explosion"><div class="spark yellow"></div></div>
        <div class="explosion"><div class="spark blue"></div></div>
        <div class="explosion"><div class="spark green"></div></div>
        <div class="explosion"><div class="spark yellow"></div></div>
    </div>
</div>

</body>
</html>
