<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <body>
    <?php
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "uno";

        // Create connection
        $conn = mysqli_connect($servername, $username, $password, $dbname);
        // Check connection
        if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
        }

        $sql = "SELECT kartyak.kep FROM kartyak INNER JOIN jatek ON kartyak.id = jatek.kartyaid WHERE jatek.playerid=0";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) > 0) {
        // output data of each row
        while($row = mysqli_fetch_assoc($result)) {
            echo '<img src="..'.$row["kep"].'">';
        }
        } else {
        echo "valami nemjau";
        }

        mysqli_close($conn);
    ?>
    </body>
</html>
