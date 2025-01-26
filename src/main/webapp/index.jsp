<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZaRa - Virtual Assistant</title>
    <link rel="shortcut icon" href="new1.png" type="image/x-icon">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            background: #000;
            color: #fff;
            overflow-x: hidden;
        }

        .video-container {
            position: fixed; /* Covers the viewport */
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
            z-index: -1;
        }

        video {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 100vw;
            height: 100vh;
            object-fit: cover; /* Ensures the video covers the entire background */
            z-index: -1;
            filter: brightness(0.5);
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.7);
            position: fixed;
            width: 100%;
            z-index: 999;
            cursor: pointer;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            transition: background-color 0.3s;
        }

        .navbar:hover {
            background-color: rgba(0, 0, 0, 0.9);
        }

        .navbar-brand {
            color: #fff;
            font-size: 24px;
            font-weight: bold;
            text-decoration: none;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .navbar-links {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        .navbar-link {
            margin-right: 20px;
        }

        .navbar-link a {
            color: #fff;
            text-decoration: none;
            font-size: 18px;
            transition: color 0.3s;
        }

        .navbar-link a:hover {
            color: #00aaff;
        }

        .main {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            height: 100vh;
            padding: 20px;
        }

        .image-container {
            max-width: 600px;
            margin-bottom: 20px;
        }

        .image-container h1 {
            font-size: 48px;
            margin: 0;
            animation: fadeInDown 1s ease-in-out;
        }

        .image-container p {
            font-size: 24px;
            margin: 10px 0 30px;
            animation: fadeInUp 1s ease-in-out;
        }

        .input {
            display: flex;
            align-items: center;
            animation: fadeInUp 1s ease-in-out;
        }

        #manualSearch {
            padding: 10px 20px;
            font-size: 18px;
            border: 2px solid #00aaff;
            border-radius: 5px;
            background: rgba(0, 0, 0, 0.5);
            color: #fff;
            margin-right: 10px;
            outline: none;
            transition: background 0.3s, border 0.3s;
        }

        #manualSearch:focus {
            background: rgba(0, 0, 0, 0.7);
            border-color: #00ccff;
        }

        button.talk {
            padding: 10px 20px;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            background-color: #00aaff;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button.talk:hover {
            background-color: #00ccff;
        }

        button.talk:focus {
            outline: none;
        }

        .content {
            margin-left: 10px;
            font-size: 18px;
            cursor: pointer;
            transition: color 0.3s;
        }


        @keyframes fadeInDown {
            0% {
                opacity: 0;
                transform: translateY(-20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeInUp {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        section {
            padding: 100px 20px;
            background: #111;
            color: #fff;
            text-align: center;
        }

        section h2 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        section p {
            font-size: 18px;
            max-width: 600px;
            margin: 0 auto;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
            background-color: #333;
            color: white;
        }
        .navbar-brand {
            color: white;
            text-decoration: none;
            font-size: 1.5em;
        }
        .nav-tabs {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
        }
        .nav-tabs .navbar-link {
            margin-right: 10px;
        }
        .nav-tabs a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            background-color: #444;
            border-radius: 5px;
        }
        .nav-tabs a.active {
            background-color: #007BFF;
        }
        .content {
            display: none;
            padding: 20px;
            margin-top: 10px;
        }
        .content.active {
            display: block;
            margin: 0px;
        }
        .homecontent1
        {
            margin-top: 10%;
            text-align: center;
            justify-content: center;
        }
        .homecontent
        {
            margin-top: 10%;
            text-align: center;
            width: 100%;
        }
       .homecontent2
       {
            text-align: left;
            margin-top: 10%;
            margin-left: auto;
       } 
    </style>
</head>

<body>
    <div class="video-container">
        <video autoplay muted loop>
            <source src="sample4.mp4" type="video/mp4">
        </video>
    </div>
    
    <header class="navbar">
        <a href="#" class="navbar-brand">Z A R A - Virtual Assistant</a>
        <nav>
            <ul class="nav nav-tabs">
                <li class="navbar-link"><a href="#home" class="active" data-toggle="tab">Home</a></li>
                <li class="navbar-link"><a href="#zara" data-toggle="tab">Zara</a></li>
                <li class="navbar-link"><a href="#help" data-toggle="tab">Help</a></li>
            </ul>
        </nav>
    </header>
   
    <main>
        
        <div id="home" class="content active">
            <div class="homecontent1">
                <h1>Z A R A</h1>
                <p>Hello users this is our project Zara is a virtual assistant developed for People, designed using <b>HTML , CSS , JS </b>to interact with users via a web-based interface. The assistant integrates voice recognition features to provide a hands-free experience, allowing users to interact with the assistant through voice commands as well as manual input. The goal of ZaRa is to enhance user engagement by providing a seamless and interactive way to obtain information and perform tasks.</p>
            </div>
                
        </div>
        <div id="zara" class="content">
            <div class="video-container">
                <video autoplay muted loop>
                    <source src="sample8.mp4" type="video/mp4">
                </video>
            </div>
            <div class="homecontent">
               <h1>Z A R A</h1>
               <p>I'm a Virtual Assistant of People. How Can I Help You Buddy?</p>
               <br>
               <input type="text" id="manualSearch" placeholder="Type your search...">
               <button class="talk" aria-label="Start voice input"><i class="fas fa-microphone-alt"></i></button>
               <span class="content">Click here to speak</span>
           </div>
       </div>
        
        <div id="help" class="content">
            <div class= "homecontent2">
                <h3>What is ZaRa?</h3>
                <p>ZaRa is a virtual assistant developed for People, designed using to interact with users via a web-based interface...</p>
            </div>
            <div class="help">
                <h3>How do I use voice commands?</h3>
                <p>To use voice commands, click the microphone icon and speak your command clearly. ZaRa will process and respond...</p>
            </div>
            <!-- Add more FAQs as needed -->
            
            <h2>Contact Support</h2>
            <p>If you need further assistance, please contact our support team with email<a href="support@zara.com"">support@zara.com</a>.</p>
        </div>
            </div>
           
    </main>    
    
</body>

<script src="app.js"></script>
    <script>
        document.querySelectorAll('.nav-tabs a').forEach(tab => {
        tab.addEventListener('click', function(event) {
            event.preventDefault();

            // Remove 'active' class from all tabs and contents
            document.querySelectorAll('.nav-tabs a').forEach(tab => tab.classList.remove('active'));
            document.querySelectorAll('.content').forEach(content => content.classList.remove('active'));

            // Add 'active' class to the clicked tab and the corresponding content
            this.classList.add('active');
            const contentId = this.getAttribute('href');
            const contentElement = document.querySelector(contentId);
            if (contentElement) {
                contentElement.classList.add('active');
            } else {
                console.error(`Element with ID ${contentId} not found.`);
            }
        });

    });
    </script>
</html>
