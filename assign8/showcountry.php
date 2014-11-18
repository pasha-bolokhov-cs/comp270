<html>
  <head>
    <title>Test MySQL and PHP</title>
  </head><body>
<?php

/* 
 * Test that mysql and PHP work.
 * Usage: showcountry.php?country
 */

// Connect to the MySQL server.
$LinkID = mysql_connect("localhost", "bolokhov", "it walks like a duck");

// Die if no connect
if (!$LinkID) {
       die('Could not connect: ' . mysql_error());
}

// Choose the DB and run a query.
mysql_select_db("db270", $LinkID);
$inp=$_SERVER['QUERY_STRING'];

$query = "select * from countrylist where common_name like \"$inp\"";
$result = mysql_query($query, $LinkID);

// If there are results, display them.
if (mysql_num_rows($result)) {
	// Display the results with the column labels
	$x=mysql_fetch_assoc($result);

	// Print the column labels
	print "<table border=1><tr>";
	foreach (array_keys($x) as $k) {
		print "<th>$k</th>";
	}
	print "</tr><tr>";

	// Print the values for the first row
	foreach ($x as $v) {
		print "<td>$v&nbsp;</td>";
	}
	print "</tr><tr>";
	
	// Print the rest of the rows.
	while ($x=mysql_fetch_row($result)) {
	      foreach ($x as $v) {
	      	      print "<td>$v</td>";
	      }
	      print "</tr><tr>";
	}
} else {
       // There were no results.
       echo "No Results for $query<br>";
}
?>
    </tr></table>
  </body>
</html>
