<!-- <?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get the user input for seatBooked and ticketSold
    $seatBookedInput = $_POST['seatBooked'];
    $ticketSoldInput = $_POST['ticketSold'];

    // Convert the user input to arrays
    $seatBooked = explode(',', $seatBookedInput);
    $ticketSold = explode(',', $ticketSoldInput);

    // Calculate the means of independent and dependent values
    $meanIndependent = array_sum($seatBooked) / count($seatBooked);
    $meanDependent = array_sum($ticketSold) / count($ticketSold);

    // Calculate the differences from the means
    $diffIndependent = [];
    $diffDependent = [];
    foreach ($seatBooked as $value) {
        $diffIndependent[] = $value - $meanIndependent;
    }
    foreach ($ticketSold as $value) {
        $diffDependent[] = $value - $meanDependent;
    }

    // Calculate the sum of squared differences
    $sumSquaredDiffIndependent = 0;
    $sumSquaredDiffDependent = 0;
    foreach ($diffIndependent as $value) {
        $sumSquaredDiffIndependent += pow($value, 2);
    }
    foreach ($diffDependent as $value) {
        $sumSquaredDiffDependent += pow($value, 2);
    }

    // Calculate the sum of products
    $sumProducts = 0;
    for ($i = 0; $i < count($seatBooked); $i++) {
        $sumProducts += $diffIndependent[$i] * $diffDependent[$i];
    }

    // Calculate the slope (beta1)
    $slope = $sumProducts / $sumSquaredDiffIndependent;

    // Calculate the intercept (beta0)
    $intercept = $meanDependent - ($slope * $meanIndependent);

    // Get the user input for the independent value to predict
    $independentValue = $_POST['independentValue'];

    // Predict the dependent value for the user input independent value
    $predictedValue = ($slope * $independentValue) + $intercept;

    // Print the predicted value
    echo "Predicted value for independent value {$independentValue}: {$predictedValue}\n";
}
 ?>

<!DOCTYPE html>
<html>
<head>
    <title>Linear Regression Prediction</title>
</head>
<body>
    <?php if ($_SERVER['REQUEST_METHOD'] !== 'POST'): ?>
    <div style="display: flex; justify-content: center; align-items: center; height: 100vh;">
        <div style="text-align: center;">
            <h1>Linear Regression Prediction</h1>
            <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>" style="display: inline-block;">
                <label for="seatBooked">Seat Booked (comma-separated):</label>
                <input type="text" name="seatBooked" id="seatBooked" required><br>

                <label for="ticketSold">Ticket Sold (comma-separated):</label>
                <input type="text" name="ticketSold" id="ticketSold" required><br>

                <label for="independentValue">Independent Value to Predict:</label>
                <input type="text" name="independentValue" id="independentValue" required><br>

                <input type="submit" value="Predict">
            </form>
        </div>
    </div>
    <?php endif; ?>
</body> -->

<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get the user input for seatBooked and ticketSold
    $seatBookedInput = $_POST['seatBooked'];
    $ticketSoldInput = $_POST['ticketSold'];

    // Convert the user input to arrays
    $seatBooked = explode(',', $seatBookedInput);
    $ticketSold = explode(',', $ticketSoldInput);

    // Calculate the means of independent and dependent values
    $meanIndependent = array_sum($seatBooked) / count($seatBooked);
    $meanDependent = array_sum($ticketSold) / count($ticketSold);

    // Calculate the differences from the means
    $diffIndependent = [];
    $diffDependent = [];
    foreach ($seatBooked as $value) {
        $diffIndependent[] = $value - $meanIndependent;
    }
    foreach ($ticketSold as $value) {
        $diffDependent[] = $value - $meanDependent;
    }

    // Calculate the sum of squared differences
    $sumSquaredDiffIndependent = 0;
    $sumSquaredDiffDependent = 0;
    foreach ($diffIndependent as $value) {
        $sumSquaredDiffIndependent += pow($value, 2);
    }
    foreach ($diffDependent as $value) {
        $sumSquaredDiffDependent += pow($value, 2);
    }

    // Calculate the sum of products
    $sumProducts = 0;
    for ($i = 0; $i < count($seatBooked); $i++) {
        $sumProducts += $diffIndependent[$i] * $diffDependent[$i];
    }

    // Calculate the slope (beta1)
    $slope = $sumProducts / $sumSquaredDiffIndependent;

    // Calculate the intercept (beta0)
    $intercept = $meanDependent - ($slope * $meanIndependent);

    // Get the user input for the independent value to predict
    $independentValue = $_POST['independentValue'];

    // Predict the dependent value for the user input independent value
    $predictedValue = ($slope * $independentValue) + $intercept;

    // Calculate the prediction error
    $actualDependentValue = $ticketSold[0]; // Assuming the first value is the actual dependent value
    $predictionError = $actualDependentValue - $predictedValue;

    // Print the predicted value and prediction error
    echo "Predicted value for independent value {$independentValue}: {$predictedValue}<br>";
    echo "Prediction error: {$predictionError}<br>";
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Prediction</title>
    <style>
        .container {
  width: 400px;
  margin: 0 auto;
  padding: 20px;
  background-color: #f4f4f4;
}

.form-wrapper {
  text-align: center;
}

h1 {
  font-size: 24px;
  margin-bottom: 20px;
}

label {
  display: block;
  margin-bottom: 10px;
}

input[type="text"],
input[type="number"] {
  width: 100%;
  padding: 10px;
  margin-bottom: 15px;
  border-radius: 4px;
  border: 1px solid #ccc;
}

button[type="submit"] {
  background-color: #4CAF50;
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

button[type="submit"]:hover {
  background-color: #45a049;
}
    </style>
</head>
<body>
    <div class="container">
        <div class="form-wrapper">
            <h1>Next Show Tickets Prediction</h1>
            <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
                <label for="seatBooked">Show Booked (comma-separated):</label>
                <input type="text" name="seatBooked" id="seatBooked" required><br>

                <label for="ticketSold">Ticket Sold (comma-separated):</label>
                <input type="text" name="ticketSold" id="ticketSold" required><br>

                <label for="independentValue">Independent Value to Predict:</label>
               
                <input type="number" name="independentValue" id="independentValue" required><br>
                <button type="submit">Predict</button>
        </form>
    </div>
</div>

</body>
</html>