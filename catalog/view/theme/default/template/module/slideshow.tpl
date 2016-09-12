<!--slide-->
<div id="slide<?php echo $module; ?>" class="slide">
    <div class="swiper-wrapper">
        <?php foreach ($banners as $banner) { ?>
        <div class="swiper-slide"><a href="<?php echo $banner['link'];?>">
                <img src="<?php echo $banner['image'];?>">
            </a>
        </div>
        <?php } ?>
    </div>
    <div class="pagination"><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span></div> 
</div>
<script>
    $(document).ready(function(){
        var mySwiper = new Swiper('#slide<?php echo $module;?>',{
            autoplay:5000,
            visibilityFullFit : true,
            loop:true,
            pagination : '.pagination'
        });
    });
</script>
<!--slide-->

