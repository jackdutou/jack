<?php foreach ($reviews as $review) { ?>
<div class="review_list">
    <div class="review_name"><spa class="review_name left"><?php echo $review['author']; ?></spa><span class="review_name right"><?php echo $review['date_added']; ?></span></div>
    <div class="review_single"><span>评&nbsp;</span><div class="grade-star g-star<?php echo $review['rating'];?>"></div><?php echo $review['rating'];?>分</div>
    <div class="clear"></div>
    <div class="review_content"><?php echo $review['text']; ?></div>
</div>
<?php } ?>

