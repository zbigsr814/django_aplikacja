<!DOCTYPE html>
<html>
<head>
	<title>Wykres temperatury</title>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<style>
		canvas {
			-moz-user-select: none;
			-webkit-user-select: none;
			-ms-user-select: none;
		}
	</style>
</head>
<body>
	<?php
		// Dane bazy danych MySQL
		$host = "localhost";
		$username = "mysql_user";
		$password = "123123";
		$dbname = "projekt";

		// Połączenie z bazą danych
		$conn = new mysqli($host, $username, $password, $dbname);

		if ($conn->connect_error) {
			die("Nie udało się połączyć z bazą danych: " . $conn->connect_error);
		}

		// Zapytanie SQL pobierające dane z bazy danych
		$sql = "SELECT time, temp FROM esp1";

		$result = $conn->query($sql);

		// Przetwarzanie wyników zapytania
		$labels = array();
		$data = array();

		if ($result->num_rows > 0) {
			while ($row = $result->fetch_assoc()) {
				array_push($labels, $row["time"]);
				array_push($data, $row["temp"]);
			}
		}

		$conn->close();
	?>

	<!-- Wykres temperatury -->
	<div style="width: 75%;">
		<canvas id="myChart"></canvas>
	</div>

	<script>
		var ctx = document.getElementById('myChart').getContext('2d');
		var chart = new Chart(ctx, {
			type: 'line',
			data: {
				labels: <?php echo json_encode($labels); ?>,
				datasets: [{
					label: 'Temperatura',
					data: <?php echo json_encode($data); ?>,
					borderColor: 'rgb(255, 99, 132)',
					backgroundColor: 'rgba(255, 99, 132, 0.2)',
					fill: true,
					lineTension: 0.2
				}]
			},
			options: {
				responsive: true,
				scales: {
					yAxes: [{
						ticks: {
							beginAtZero: true
						}
					}]
				}
			}
		});
	</script>
</body>
</html>