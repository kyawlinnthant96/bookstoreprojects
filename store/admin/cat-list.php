<?php 
    include("confs/config.php");
    include("confs/auth.php");

    $result = mysqli_query($conn, "SELECT * FROM categories");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>Category List</h1>

    <ul class="menu">
        <li><a href="book-list.php">Manage Books</a></li>
        <li><a href="cat-list.php">Manage Category</a></li>    
        <li><a href="orders.php">Manage Orders</a></li>
        <li style="float:right"><a href="logout.php">Logout</a></li>
    </ul>

    <ul class="catlist">
        <?php while($row = mysqli_fetch_assoc($result)) : ?>
            <li title="<?php echo $row['remark'] ?>" >
                <a href="cat-del.php?id=<?php echo $row['id'] ?>" class="del">del</a>
                <a href="cat-edit.php?id=<?php echo $row['id'] ?>" class="edt">edit</a>
                <span><?php echo $row['name'] ?></span>
            </li>
        <?php endwhile; ?>
    </ul>

    <a href="cat-new.php" class="new">New Category</a>

</body>
</html>

