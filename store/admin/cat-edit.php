<?php 
    include("confs/config.php");

    $id = $_GET['id'];
    $result = mysqli_query($conn, "SELECT * FROM categories WHERE id = $id");
    $row = mysqli_fetch_assoc($result);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Edit Categories</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>Edit Category</h1>
    
    <ul class="menu">
        <li><a href="book-list.php">Manage Books</a></li>
        <li><a href="cat-list.php">Manage Category</a></li>    
        <li><a href="orders.php">Manage Orders</a></li>
        <li style="float:right"><a href="logout.php">Logout</a></li>
    </ul>

    <form action="cat-update.php" method="post">
        <input type="hidden" name="id" value="<?php echo $row['id'] ?>">

        <label for="name">Category Name</label>
        <input type="text" name="name" id="name" value="<?php echo $row['name'] ?>">

        <label for="remark">Remark</label>
        <input type="text" name="remark" id="remark" value="<?php echo $row['remark'] ?>">

        <br><br>
        <input type="submit" class="catupdate" value="Update Category">

    </form>
</body>
</html>