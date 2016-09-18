<?php echo $header; ?>
<div class="mall_main" xmlns="http://www.w3.org/1999/html">
    <div id="child_header">
        <div class="goback"><a href="javascript:history.back(-1)"><i></i></a></div>
        <div class="current_location"><span>商品详情</span></div>
    </div>

    <div id="banner_box" class="slide">
        <div class="swiper-wrapper">
            <?php foreach ($images as $image) { ?>
            <div class="swiper-slide">
                    <img src="<?php echo $image['popup'];?>">
            </div>
            <?php } ?>
        </div>
        <div class="pagination"><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span></div>
    </div>
    <div id="product" class="des_goods">
        <p><?php echo $heading_title;?> </p>
        <?php if(is_array($tags) && count($tags) > 0){ ?>
        <p><?php foreach($tags as $tk=>$tv){ ?><span class="sp_style1"><?php echo $tv['tag'];?></span>&nbsp;<?php } ?></p>
        <?php } ?>
        <?php if(!empty($special)){ ?>
        <p><span class="pr">原价</span><span class="sp_style2"><?php echo $price;?></span></p>
        <p><span class="pr">促销价</span><span class="sp_style3"><?php echo $special;?></span></p>
        <?php }else{ ?>
        <p><span class="pr">现价</span><span class="sp_style3"><?php echo $price;?></span></p>
        <?php } ?>
        <p><span class="pr">供货日期</span><span class="sp_style4"><?php echo $date_available;?></span></p>
        <p><span class="pr">服务</span><span>由阳朔乐悠悠旅游有限公司销售和发货并提供售后服务</span></p>
        <p><span class="pr">运费</span><span>深圳至无锡</span><span>快递：6.00</span><span>EMS：14.00</span></p>
        <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
        <div class="line"></div>
        <?php if ($options) { ?>
        <div  class="spec_select">
            <ul>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
                <span><?php echo $option['name']; ?></span>
                <li>
                    <select name="option[<?php echo $option['product_option_id']; ?>]" class="form-control">
                        <option value=""><?php echo $text_select; ?></option>
                        <?php foreach ($option['product_option_value'] as $option_value) { ?>
                        <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?></option>
                        <?php } ?>
                    </select>
                </li>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
                <span><?php echo $option['name']; ?></span>
                <li >
                    <?php foreach ($option['product_option_value'] as $option_value) { ?>
                    <label>
                    <input type="radio"  name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <span><?php echo $option_value['name']; ?></span>
                    </label>
                    <?php } ?>
                </li>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
                <span><?php echo $option['name']; ?></span>
                <li>
                    <?php foreach ($option['product_option_value'] as $option_value) { ?>
                    <label>
                    <input type="checkbox"   name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <span><?php echo $option_value['name']; ?></span>
                    </label>
                    <?php } ?>
                </li>
            <?php } ?>
            <?php if ($option['type'] == 'image') { ?>
                <span><?php echo $option['name']; ?></span>
                <li>
                    <?php foreach ($option['product_option_value'] as $option_value) { ?>
                        <label>
                            <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                            <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                            <?php if ($option_value['price']) { ?>
                            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                            <?php } ?>
                        </label>
                    <?php } ?>
                </li>
            <?php } ?>
            <?php } ?>
        </div>
        <div class="line"></div>
        <?php } ?>
        <div class="goods_activity">
            <div class="num">
                <span>数量</span>
                <span class="spinner">
                <input type="text" name="quantity" id="quantity" class="goodsNum value passive" maxlength="2">
                </span>
                <span>库存50套</span>
            </div>
            <p class="pay_type"><span class="pr">支付类别</span><span><i class="pay01"></i>信用卡</span><span><i class="pay02"></i>支付宝</span><span><i class="pay03"></i>微信</span></p>
        </div>
        <div class="line"></div>
    </div>
    <div class="box_list">
        <ul class="box_nav">
            <li class="current"><a>商品详情</a></li>
            <li ><a>商品评论(<?php echo $reviews;?>)</a></li>
        </ul>
        <div class="goods_box" >
            <?php echo $description;?>
        </div>
        <div class="goods_box" style="display: none">
            <div class="review_header"><span>总评</span><div class="grade-star g-star<?php echo $rating;?>"></div>&nbsp;<?php echo $rating;?>分
                <div class="right">共<?php echo $reviews;?>条评论</div>
            </div>
            <div class="review_box" id="review_box">
                <div class="review_box_list">
                </div>
                <!--<div class="review_list">
                    <div class="review_name"><spa class="review_name left">杰克</spa><span class="review_name right">2016-9-11</span></div>
                    <div class="review_single"><span>评&nbsp;</span><div class="grade-star g-star<?php echo $rating;?>"></div><?php echo $rating;?>分</div>
                    <div class="clear"></div>
                    <div class="review_content">你说很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好很好</div>
                </div>-->
            </div>
        </div>
    </div>
    <div class="bottomdiv clearfix">
        <div class="inner clearfix">
            <div class="fl btn_sure">
                <a href="">立即购买</a>
            </div>
            <div class="fl btn_buy_detail" id="button-cart">
                <a class="addshop_cat">加入购物车</a>
            </div>
            <div class="bottomPrice"><?php if(!empty($special)){ echo $special;}else{ echo $price;}?></div>
        </div>

    </div>
</div>
<script type="text/javascript">
    $(function(){
        var reviewPage = 1;
        var reviewLenght = <?php echo $reviews;?>;
        var reviewPageSize = 5;
        var reviewPageCount = Math.ceil(reviewLenght/reviewPageSize);
        var myScroll;
        var mySwiper = new Swiper('#banner_box',{
            autoplay:5000,
            visibilityFullFit : true,
            loop:true,
            pagination : '.pagination'
        });
        <!--商品数量加减-->
        $(".goodsNum").spinner({value:1});
        $('.box_list ul li').click(function(){
            var index = $('.box_list ul li').index(this);
            $(this).addClass('current').siblings('li').removeClass('current');
            $('.box_list .goods_box:eq('+index+')').show().siblings('.goods_box').hide();
            if(index == 1){
                reviewPage = 1;//复位分页
                myScroll = new IScroll('#review_box', {
                    mouseWheel: true,  //是否监听鼠标滚轮事件
                    bounceTime:600,    //弹力动画持续的毫秒数
                    probeType: 3,
                    vScroll:false
                });
                //myScroll.on('scrollStart', );
                //myScroll.on('scroll', );
                myScroll.on('scrollEnd', showReviewContents);
                $.ajax({
                    type: 'GET',
                    url: 'index.php?route=product/product/review&product_id=<?php echo $product_id; ?>&page='+reviewPage,
                    dataType: 'html',
                    beforeSend: function () {
                        $(".review_box_list").html("<div class='dropload-load'><span class='loading'></span>玩命加载中...</div>");
                    },
                    success: function (data) {
                        if (data != '') {
                            if(reviewPageCount > 1){
                                //$(".box_list").css('height','500px');
                                //$(".review_box").css({"height":"600px","overflow-y":"auto","width":"100%"});
                            }
                            $(".review_box_list").html(data);
                            if(reviewPage == reviewPageCount){
                                $(".review_box_list").append("<div class='dropload-noData'>评论到此结束啦！</div>");
                            }
                            reviewPage += 1;
                            myScroll.refresh();//刷新结构
                        }else{
                            $(".review_box_list").html("<div class='dropload-noData'>暂无评论</div>");
                        }
                    }
                });
                /*$('.review_box').dropload({
                    scrollArea : window,
                    loadDownFn : function(me){
                        $.ajax({
                            type: 'GET',
                            url: 'index.php?route=product/product/review&product_id=<?php echo $product_id; ?>&page='+reviewPage,
                            dataType: 'html',
                            beforeSend: function () {

                            },
                            success: function (data) {
                                if (data != '') {
                                    $(".review_box_list").append(data);
                                    if(reviewPage >= reviewPageCount){
                                        me.lock();
                                        // 数据已到底
                                        me.noData();
                                    }
                                    reviewPage += 1;
                                } else{
                                    me.lock();
                                    // 数据已到底
                                    me.noData();
                                }
                                me.resetload();
                            }
                        });
                    }
                });*/

            }
        });

        $("#product select[name*='option']").change(function(){
            refresh_price();
        });
        $(".increase,.decrease").on("click",function(){
            refresh_price();
        });
        $("#quantity").on("blur",function(){
            refresh_price();
        });
        $("#product input[type='radio'], #product input[type='checkbox']").on("click",function(){
            refresh_price();
        });
        function refresh_price() {
            if ($("#spec_select_prompt").length > 0){
                $("#spec_select_prompt").remove();
                $('.spec_select').css({'border':''});
            }
            $.ajax({
                url: 'index.php?route=product/product/price',
                type: 'post',
                data: $('#quantity,#product input[type=\'hidden\'],#product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select'),
                dataType: 'json',
                beforeSend: function() {
                },
                complete: function() {
                },
                success: function(json) {
                    if (json['special'] !== undefined) {
                        $('.sp_style3').html(json['special']);
                        $('.bottomPrice').html(json['special']);
                    } else {
                        $('.sp_style2').html(json['price']);
                        $('.sp_style3').html(json['special']);
                        $('.bottomPrice').html(json['special']);
                    }
                },
                error: function(xhr, ajaxOptions, thrownError) {
                }
            });
        }
        function showReviewContents(){
            if(reviewPage > reviewPageCount){
                return;
            }
            $.ajax({
                type: 'GET',
                url: 'index.php?route=product/product/review&product_id=<?php echo $product_id; ?>&page='+reviewPage,
                dataType: 'html',
                beforeSend: function () {
                },
                success: function (data) {
                    if (data != '') {
                        $(".review_box_list").append(data);
                        if(reviewPage >= reviewPageCount){
                            $(".review_box_list").append("<div class='dropload-noData'>评论到此结束啦！</div>");
                        }
                        reviewPage += 1;
                        myScroll.refresh();//刷新结构
                    }
                }
            });
        }
        $('#button-cart').on('click', function() {
            $.ajax({
                url: 'index.php?route=checkout/cart/add',
                type: 'post',
                data: $('#quantity,#product input[type=\'hidden\'],#product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select'),
                dataType: 'json',
                beforeSend: function() {
                    layer.open({
                        type: 2
                        ,content: '请稍后'
                    });
                },
                complete: function() {
                    layer.closeAll();
                },
                success: function(json) {
                    if (json['error']) {
                        if (json['error']['option']) {
                            if ($("#spec_select_prompt").length <= 0){
                                $('.spec_select').prepend('<div id=\'spec_select_prompt\' style=\'color: red\'>请选择您要的商品信息</div');
                            }
                            $('.spec_select').css({'border':'1px solid #FF0000'});
                            $("html,body").animate({scrollTop: $(".spec_select").offset().top-500}, 1000);
                        }
                    }

                    if (json['success']) {
                        $('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                        $('#cart #cart-total').html(json['total']);
                        $('html, body').animate({ scrollTop: 0 }, 'slow');
                        $('#cart > .cart-content').load('index.php?route=common/cart/info ul li');
                    }
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            });
        });
    });
</script>
<script>
    function layerAert(msg,time=2){
        //提示
        layer.open({
            content: msg
            ,skin : 'msg'
            ,time: time //N秒后自动关闭
        });
    }
</script>
<?php echo $footer; ?>