<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About Us</title>
    <jsp:include page="includes/header.jsp"/>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column; /* Change to column direction */
            align-items: center; /* Center items horizontally */
            height: 100vh; /* Change to full height */
        }

        #container {
            height: 500px;
            max-width: 900px;
            width: 100%;
            margin: 20px;
            background-color: #f9f9f9; /* Light background color */
            padding: 20px;
            text-align: center;
        }

        header {
            text-align: center;
            padding: 10px;
        }

        section {
            margin-top: 20px;
        }

        h1, h2 {
            color: #333;
        }

        p {
            line-height: 1.5;
            color: #555;
        }

        /* Add styling for the navbar */
        #navbar {
            width: 100%; /* Make the navbar full width */
            background-color: #333; /* Navbar background color */
            color: #fff; /* Navbar text color */
            padding: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div id="navbar">
        <jsp:include page="includes/navbar.jsp"/>
    </div>
    <div id="container">
        <header>
            <h1>About Us</h1>
        </header>

        <section>
            <p>
                Green Supermarket, your trusted destination for sustainable living. We're more than a grocery store; we're a community that believes in conscious choices for a healthier planet. Our curated selection of eco-friendly products reflects our commitment to transparency and quality.
            </p>
        </section>

        <section>
            <h2>Who we are</h2>
            <p>
                Green Supermarket is one of the leading supermarkets in the country. This is a family business that has been passed on from generation to generation, now celebrating 30 years for our chain of Green Supermarket.
            </p>
        </section>

        <section id="about-us">
            <h2>Meet the Team</h2>
            <p>
                Get to know the amazing individuals behind this creation. We are a group of individuals studying at Plymouth University, following the Software Engineering degree program. If you have any complaints, suggestions, and innovative ideas, please contact us through our contact us page.
            </p>
        </section>
    </div>
</body>
</html>
