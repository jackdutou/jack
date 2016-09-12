<!--categoryList-->
<ul class="categoryLiIcon">
<?php foreach ($categories as $category) { ?>
 <li>
  <a href="category.html">
   <img src="<?php echo $category['image'];?>">
   <em><?php echo $category['name']; ?></em>
  </a>
 </li>
<?php } ?>
</ul>
<!--categoryList-->
