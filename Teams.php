<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IPL Teams</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            color: #ffffff;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5);
            color: #000000;
        }
        .team-card {
            background-color: #ffffff;
            color: #000000;
            border: 2px solid #eceff1;
            border-radius: 10px;
            transition: transform 0.3s, box-shadow 0.3s, background-color 0.3s;
        }
        .team-card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
        }
        .csk-card:hover {
            background-color: #FFEB3B; 
        }
        .mi-card:hover {
            background-color: #004B8D;
        }
        .rcb-card:hover {
            background-color: #D32F2F; 
        }
        .dc-card:hover {
            background-color: #0c4b8a;/
        }
        .srh-card:hover {
            background-color: #FF5722; 
        }
        .lsg-card:hover {
            background-color: #0288D1; 
        }
        .gt-card:hover {
            background-color: #000435e2; 
        }
        .pbks-card:hover {
            background-color: #C62828; 
        }
        .team-card img {
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            height: 120px;
            width: auto;
            margin: 0 auto;
            display: block;
        }
        .team-card .card-body {
            text-align: center;
            font-size: 1.2rem;
            font-weight: bold;
            letter-spacing: 1px;
        }
    </style>
</head>
<body>
    <div class="container my-5">
        <h1 class="text-center mb-4">Indian Premier League Teams</h1>
        <div class="row g-4">
            
            <div class="col-md-3">
                <a href="csk.php?team=csk" style="text-decoration: none;">
                    <div class="card team-card csk-card">
                        <img src="Logos/CSK.png" class="card-img-top" alt="CSK Logo">
                        <div class="card-body">
                            <h5 class="card-title">Chennai Super Kings</h5>
                        </div>
                    </div>
                </a>
            </div>

           
            <div class="col-md-3">
                <a href="mi.php?team=mi" style="text-decoration: none;">
                    <div class="card team-card mi-card">
                        <img src="Logos/MI.jpg" class="card-img-top" alt="MI Logo">
                        <div class="card-body">
                            <h5 class="card-title">Mumbai Indians</h5>
                        </div>
                    </div>
                </a>
            </div>

            
            <div class="col-md-3">
                <a href="rcb.php?team=rcb" style="text-decoration: none;">
                    <div class="card team-card rcb-card">
                        <img src="Logos/RCB.png" class="card-img-top" alt="RCB Logo">
                        <div class="card-body">
                            <h5 class="card-title">Royal Challengers Bangalore</h5>
                        </div>
                    </div>
                </a>
            </div>

            
            <div class="col-md-3">
                <a href="dc.php?team=dc" style="text-decoration: none;">
                    <div class="card team-card dc-card">
                        <img src="Logos/DC.png" class="card-img-top" alt="DC Logo">
                        <div class="card-body">
                            <h5 class="card-title">Delhi Capitals</h5>
                        </div>
                    </div>
                </a>
            </div>

            
            <div class="col-md-3">
                <a href="srh.php?team=srh" style="text-decoration: none;">
                    <div class="card team-card srh-card">
                        <img src="Logos/SRH.jpg" class="card-img-top" alt="SRH Logo">
                        <div class="card-body">
                            <h5 class="card-title">SunRisers Hyderabad</h5>
                        </div>
                    </div>
                </a>
            </div>

            
            <div class="col-md-3">
                <a href="lsg.php?team=lsg" style="text-decoration: none;">
                    <div class="card team-card lsg-card">
                        <img src="Logos/LSG.jpg" class="card-img-top" alt="LSG Logo">
                        <div class="card-body">
                            <h5 class="card-title">Lucknow Super Giants</h5>
                        </div>
                    </div>
                </a>
            </div>

            
            <div class="col-md-3">
                <a href="gt.php?team=gt" style="text-decoration: none;">
                    <div class="card team-card gt-card">
                        <img src="Logos/GT.jpg" class="card-img-top" alt="GT Logo">
                        <div class="card-body">
                            <h5 class="card-title">Gujarat Titans</h5>
                        </div>
                    </div>
                </a>
            </div>

            
            <div class="col-md-3">
                <a href="kings.php?team=kings" style="text-decoration: none;">
                    <div class="card team-card pbks-card">
                        <img src="Logos/Punjab.png" class="card-img-top" alt="PBKS Logo">
                        <div class="card-body">
                            <h5 class="card-title">Punjab Kings</h5>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
