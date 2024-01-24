<!DOCTYPE html>
<html>
	<head>
		<title>Home</title>

		<link rel="stylesheet" href="/home/rtw/.cache/wal/colors.css" />
		<style>
			* {
				background-color: var(--background);
				color: var(--foreground);
			}
			
			body {
				font-family: sans-serif;
			}
		</style>
	</head>

	<body>
		<h1>Home</h1>

<ul>
<?php
 $row = 1;
 if (($handle = fopen("keys.csv", "r")) !== FALSE) {
	while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
 		$num = count($data);
		$row++;
		echo "<li><code>" . $data[0] . "</code> &mdash; <a href=\"" . $data[1] . "\">" . $data[1] . "</a></li>\n";
	}
	fclose($handle);
}
?>
</ul>
		</div>
</html>
