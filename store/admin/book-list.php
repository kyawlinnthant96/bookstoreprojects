<?php 

    include("confs/config.php");
    include("confs/auth.php");

    $result = mysqli_query($conn, "
            SELECT books.*, categories.name AS category_name
            FROM books LEFT JOIN categories
            ON books.category_id = categories.id
            ORDER BY books.created_date DESC
    ");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Book List</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>Book List</h1>

    <ul class="menu">
        <li><a href="book-list.php">Manage Books</a></li>
        <li><a href="cat-list.php">Manage Category</a></li>    
        <li><a href="orders.php">Manage Orders</a></li>
        <li style="float:right"><a href="logout.php">Logout</a></li>
    </ul>

    <ul class="books">

        <?php while($row = mysqli_fetch_assoc($result)) :?>
            <li>
                <img 
                    src="covers/<?php echo $row['cover'] ?> " 
                    alt="" align="right" height="180">

                    <b> <?php echo $row['title'] ?></b>
                    <i>By <em><?php echo $row['author'] ?></em></i>
                    <small>(in <?php echo $row['category_name'] ?>)</small>
                    <span>$<?php echo $row['price'] ?></span>
                    <div><?php echo $row['summary'] ?></div>

                    <a href="book-del.php?id=<?php echo $row['id'] ?>" class="del" >Delete</a>
                    <a href="book-edit.php?id=<?php echo $row['id'] ?>" class="edt">Edit</a>
            </li>
        <?php endwhile; ?>
    </ul>

    <a href="book-new.php" class="new">New Book</a>
</body>
</html>