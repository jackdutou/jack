<?php echo $header; ?>
<!--header-->
<header>
    <a href="javascript:history.go(-1);" class="iconfont backIcon">&lt;</a>
    <h1><?php echo $headingTitle;?></h1>
</header>
<div style="height:1rem;"></div>
<mark class="notFound">对不起页面未找到！返回<a href="<?php echo $hrefIndex;?>">首页</a>试试？</mark>
<div style="height:1.2rem;"></div>
<script>
    document.oncontextmenu=new Function("event.returnValue=false;");
    document.onselectstart=new Function("event.returnValue=false;");
</script>
<?php echo $footer; ?>