<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ipl"; 

$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$player_name = $_GET['player_name'];

$sql = "SELECT * FROM csk WHERE player_name = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $player_name);
$stmt->execute();
$result = $stmt->get_result();
$player = $result->fetch_assoc();

if (!$player) {
    die("Player not found.");
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Player Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #fee54c;
            font-family: Arial, sans-serif;
        }
        .details-box {
            margin: 50px auto;
            max-width: 600px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 20px;
            text-align: center;
        }
        .details-box img {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 20px;
            border: 2px solid #ccc;
        }
        .details-box h1 {
            font-size: 1.8rem;
            margin-bottom: 20px;
        }
        .details-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 10px;
            margin-top: 20px;
        }
        .details-grid div {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            text-align: center;
            background: #f8f9fa;
        }
        .btn-back {
            display: block;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="details-box">
        <img src="<?php echo 'http://localhost/' . htmlspecialchars($player['images']); ?>" 
             alt="<?php echo htmlspecialchars($player['player_name']); ?>" 
             onerror="this.src='http://localhost/IPL/default.jpg';">
        
        <h1><?php echo htmlspecialchars($player['player_name']); ?> - Details</h1>
        <div class="details-grid">
            <div><strong>Age</strong><br><?php echo htmlspecialchars($player['age']); ?></div>
            <div><strong>Matches Played</strong><br><?php echo htmlspecialchars($player['matches_played']); ?></div>
            <div><strong>Highest Figures</strong><br><?php echo htmlspecialchars($player['highest_figures']); ?></div>
            <div><strong>Achievements</strong><br><?php echo htmlspecialchars($player['acheivements']); ?></div>
        </div>
        <div class="btn-back">
            <a href="Teams.php" class="btn btn-primary">Back to Teams</a>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
<?php
$conn->close();
?>
