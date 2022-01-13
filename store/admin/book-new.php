<?php 
    include("confs/config.php");
    include("confs/auth.php");

    $result = mysqli_query($conn, "SELECT id, name FROM categories");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>New Book</h1>
    <ul class="menu">
        <li><a href="book-list.php">Manage Books</a></li>
        <li><a href="cat-list.php">Manage Category</a></li>    
        <li><a href="orders.php">Manage Orders</a></li>
        <li style="float:right"><a href="logout.php">Logout</a></li>
    </ul>

    <form action="book-add.php" method="post" enctype="multipart/form-data">
        <label for="title">Book Title</label>
        <input type="text" name="title" id="title">

        <label for="author">Author</label>
        <input type="text" name="author" id="author">

        <label for="summary">Summary</label>
        <textarea name="summary" id="summary"></textarea>

        <label for="price">Price</label>
        <input type="text" name="price" id="price">

        <label for="categories">Category</label>
        <select name="category_id" id="categories">
            <option value="0">Choose</option>

            <?php while($row = mysqli_fetch_assoc($result)) : ?>
                <option value="<?php echo $row['id'] ?>">
                    <?php echo $row['name'] ?>
                </option>
            <?php endwhile; ?>

        </select>

        <label for="cover">Cover</label>
        <input type="file" name="cover" id="cover">

        <br><br>
        <button class="b-add" type="submit">Add Book</button>
        <button class="back"><a href="book-list.php">back</a></button> 
    </form>
</body>
</html>