<?php 
    include("confs/auth.php");
    include("confs/auth.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>New Category</h1>

    <ul class="menu">
        <li><a href="book-list.php">Manage Books</a></li>
        <li><a href="cat-list.php">Manage Category</a></li>    
        <li><a href="orders.php">Manage Orders</a></li>
        <li style="float:right"><a href="logout.php">Logout</a></li>
    </ul>

    <form action="cat-add.php" method="post">
        <label for="name">Name</label>
        <input type="text" name="name">

        <label for="remark">Remark</label>
        <input type="text" name="remark">

        <br><br>
        <input type="submit" class="new" value="Add Category">
    </form>
</body>
</html>