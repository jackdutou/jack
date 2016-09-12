<?php echo $header; ?>
<div style="height:1rem;"></div>
<nav>
    <a href="index.html" class="homeIcon">首页</a>
    <!--<a href="category.html" class="categoryIcon">分类</a>-->
    <a href="cart.html" class="cartIcon">购物车</a>
    <a href="user.html" class="userIcon">我的</a>
</nav>
<?php echo $content; ?>
<!--floatCart-->
<div class="hoverCart">
    <a href="cart.html">0</a>
</div>
<div style="height:1.2rem;"></div>
<script>
    $(document).ready(function () {
        var mySwiper = new Swiper('#slide', {
            autoplay: 5000,
            visibilityFullFit: true,
            loop: true,
            pagination: '.pagination'
        });
        //product list:Tab
        $(".tab_proList dd").eq(0).show().siblings(".tab_proList dd").hide();
        $(".tab_proList dt a").eq(0).addClass("currStyle");
        $(".tab_proList dt a").click(function () {
            var liindex = $(".tab_proList dt a").index(this);
            $(this).addClass("currStyle").siblings().removeClass("currStyle");
            $(".tab_proList dd").eq(liindex).fadeIn(150).siblings(".tab_proList dd").hide();
        });
        //飞入动画，具体根据实际情况调整
        $(".addToCart").click(function () {
            $(".hoverCart a").html(parseInt($(".hoverCart a").html()) + 1);
            /*测试+1*/
            var shopOffset = $(".hoverCart").offset();
            var cloneDiv = $(this).parent().siblings(".goodsPic").clone();
            var proOffset = $(this).parent().siblings(".goodsPic").offset();
            cloneDiv.css({ "position": "absolute", "top": proOffset.top, "left": proOffset.left });
            $(this).parent().siblings(".goodsPic").parent().append(cloneDiv);
            cloneDiv.animate({
                width: 0,
                height: 0,
                left: shopOffset.left,
                top: shopOffset.top,
                opacity: 1
            }, "slow");
        });
    });
</script>
<?php echo $footer; ?>