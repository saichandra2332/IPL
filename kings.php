<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ipl";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the team parameter from the URL
$team = $_GET['team'] ?? '';

// Validate the team parameter to prevent SQL injection
$allowed_teams = ['kings']; // Add other teams here if needed
if (!in_array($team, $allowed_teams)) {
    die("Invalid team.");
}

$searchError = '';
$searchResult = null;

// Handle AJAX request for search suggestions
if (isset($_GET['search_query']) && isset($_GET['team'])) {
    $searchQuery = trim($_GET['search_query']);
    $sql = "SELECT player_name FROM $team WHERE player_name LIKE ?";
    $stmt = $conn->prepare($sql);
    $searchParam = "%$searchQuery%";
    $stmt->bind_param("s", $searchParam);
    $stmt->execute();
    $result = $stmt->get_result();

    $suggestions = [];
    while ($row = $result->fetch_assoc()) {
        $suggestions[] = $row['player_name'];
    }

    echo json_encode($suggestions);
    exit;
}

// Fetch data from the respective table or search for a player
if (isset($_GET['search'])) {
    $search = trim($_GET['search']);
    $sql = "SELECT player_name, images, player_role FROM $team WHERE player_name LIKE ?";
    $stmt = $conn->prepare($sql);
    $searchParam = "%$search%";
    $stmt->bind_param("s", $searchParam);
    $stmt->execute();
    $result = $stmt->get_result();
    $searchResult = $result->fetch_all(MYSQLI_ASSOC);

    if (empty($searchResult)) {
        $searchError = "Player not found.";
    }
} else {
    $sql = "SELECT player_name, images, player_role FROM $team";
    $result = $conn->query($sql);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Team Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #C62828;
            color: #212529;
        }
        h1 {
            color: #ffffff;
            font-weight: bold;
        }
        .card-container {
            margin-top: 20px;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }
        .card {
            width: 18rem;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease, transform 0.3s ease;
            cursor: pointer;
        }
        .card:hover {
            background-color: #C62828;
            transform: translateY(-5px);
        }
        .card img {
            height: 17rem;
            object-fit: cover;
        }
        .search-container {
            margin-bottom: 20px;
            position: relative;
            display: flex;
            justify-content: center;
        }
        .form-control {
            width: 600px;
            border-radius: 20px;
            padding: 10px 20px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        }
        .form-control:focus {
            outline: none;
            border-color: #0056b3;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.5);
        }
        .btn-primary {
            background-color: #ffffff;
            color: #007bb5;
            border: none;
            border-radius: 20px;
            padding: 10px 20px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        }
        .btn-primary:hover {
            background-color: #0056b3;
            color: #ffffff;
        }
        .error-message {
            color: red;
            text-align: center;
            font-weight: bold;
            margin-top: 20px;
        }
        .suggestions-box {
            position: absolute;
            top: 50px;
            background: #fff;
            border: 1px solid #ccc;
            border-radius: 10px;
            max-height: 200px;
            overflow-y: auto;
            z-index: 1000;
            width: 300px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .suggestion-item {
            padding: 10px;
            cursor: pointer;
            border-bottom: 1px solid #f0f0f0;
        }
        .suggestion-item:hover {
            background-color: #f0f0f0;
        }
        .suggestion-item:last-child {
            border-bottom: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Search Bar -->
        <div class="search-container">
            <form action="" method="GET" class="d-flex">
                <input type="hidden" name="team" value="<?php echo htmlspecialchars($team); ?>">
                <input class="form-control me-2" type="search" name="search" placeholder="Search for a player" aria-label="Search">
            </form>
            <div class="suggestions-box"></div>
        </div>

        <!-- Card Container -->
        <h1 class="text-center"><?php echo strtoupper($team); ?> Team Details</h1>
        <?php if (!empty($searchError)): ?>
            <p class="error-message"><?php echo $searchError; ?></p>
        <?php elseif ($result->num_rows > 0 || isset($searchResult)): ?>
            <div class="card-container">
                <?php
                $players = isset($searchResult) ? $searchResult : $result->fetch_all(MYSQLI_ASSOC);
                foreach ($players as $row): ?>
                    <div class="card" onclick="location.href='kingsdetails.php?player_name=<?php echo urlencode($row['player_name']); ?>'">
                        <img src="<?php echo 'http://localhost/' . htmlspecialchars($row['images']); ?>" class="card-img-top" alt="<?php echo htmlspecialchars($row['player_name']); ?>" onerror="this.src='http://localhost/IPL/default.jpg';">
                        <div class="card-body text-center">
                            <h5 class="card-title"><?php echo htmlspecialchars($row['player_name']); ?></h5>
                            <p class="role"><?php echo htmlspecialchars($row['player_role']); ?></p>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        <?php else: ?>
            <p class="text-center">No data available for this team.</p>
        <?php endif; ?>
        <div class="text-center mt-4">
            <a href="Teams.php" class="btn btn-primary">Back to Teams</a>
        </div>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const searchInput = document.querySelector('input[name="search"]');
            const suggestionsBox = document.querySelector('.suggestions-box');

            searchInput.addEventListener('input', function () {
                const query = this.value;
                const team = "<?php echo htmlspecialchars($team); ?>";
                if (query.length > 0) {
                    fetch(`?search_query=${encodeURIComponent(query)}&team=${encodeURIComponent(team)}`)
                        .then(response => response.json())
                        .then(data => {
                            suggestionsBox.innerHTML = '';
                            data.forEach(player => {
                                const suggestion = document.createElement('div');
                                suggestion.textContent = player;
                                suggestion.classList.add('suggestion-item');
                                suggestion.addEventListener('click', () => {
                                    searchInput.value = player;
                                    suggestionsBox.innerHTML = '';
                                });
                                suggestionsBox.appendChild(suggestion);
                            });
                        })
                        .catch(error => console.error('Error fetching suggestions:', error));
                } else {
                    suggestionsBox.innerHTML = '';
                }
            });

            document.addEventListener('click', function (event) {
                if (!searchInput.contains(event.target)) {
                    suggestionsBox.innerHTML = '';
                }
            });
        });
    </script>
</body>
</html>
<?php $conn->close(); ?>
