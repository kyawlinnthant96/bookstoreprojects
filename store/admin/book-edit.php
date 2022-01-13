<?php
    include("confs/config.php");


    $id = $_GET['id'];
    $result = mysqli_query($conn, "SELECT * FROM books WHERE id = $id");
    $row = mysqli_fetch_assoc($result);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Book</title>
    <link rel="stylesheet" href="css/style.css">
    
</head>
<body>
    <h1>Edit Books</h1>
    <ul class="menu">
        <li><a href="book-list.php">Manage Books</a></li>
        <li><a href="cat-list.php">Manage Category</a></li>    
        <li><a href="orders.php">Manage Orders</a></li>
        <li style="float:right"><a href="logout.php">Logout</a></li>
    </ul>

    <form action="book-update.php" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<?php echo $row['id'] ?>">

        <label for="title">Book Title</label>
        <input type="text" name="title" id="title" 
        value="<?php echo $row['title'] ?>">

        <label for="author">Author</label>
        <input type="text" name="author" id="author" 
        value="<?php echo $row['author'] ?>">

        <label for="title">Book Title</label>
        <textarea name="summary" id="sum"><?php echo $row['summary'] ?></textarea>

        <label for="price">Price</label>
        <input type="text" name="price" id="price" 
        value="<?php echo $row['price'] ?>">

        <label for="categories">Category</label>
        <select name="category_id" id="categories">
            <option value="0">Choose</option>
            <?php 
                $categories = mysqli_query($conn, "SELECT id, name FROM categories");
                while($cat = mysqli_fetch_assoc($categories)) :
            ?>
            <option value="<?php echo $cat['id'] ?>"
                <?php if($cat['id'] == $row[ 'category_id' ]) echo "selected"?> >
                <?php echo $cat[ 'name' ] ?>
            </option>
            <?php endwhile; ?>
        </select>
        
        <br><br>
        <img src="covers/<?php echo $row['cover'] ?>"  alt="" height="150">
        <label for="cover">Cover</label>
        <input type="file" name="cover" id="cover">
        <br><br>
        <button type="submit" class="b-edt">Update</button>
        <button class="b-edt"><a href="book-list.php">Back</a></button>
        
    </form>
</body>
</html>