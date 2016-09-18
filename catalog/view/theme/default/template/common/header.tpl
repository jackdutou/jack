<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>" />
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content= "<?php echo $keywords; ?>" />
    <?php } ?>
</head>
<link href="catalog/view/theme/<?php echo $configTemplate;?>/stylesheet/style.css" rel="stylesheet">
<link href="catalog/view/theme/<?php echo $configTemplate;?>/stylesheet/swiper3.07.min.css" rel="stylesheet">
<link href="catalog/view/theme/<?php echo $configTemplate;?>/stylesheet/dropload.css" rel="stylesheet">
<script src="catalog/view/theme/<?php echo $configTemplate;?>/javascript/jquery.js" type="text/javascript"></script>
<script src="catalog/view/theme/<?php echo $configTemplate;?>/javascript/iscroll.js"></script>
<script src="catalog/view/theme/<?php echo $configTemplate;?>/javascript/swiper.min.js"></script>
<script src="catalog/view/theme/<?php echo $configTemplate;?>/javascript/jquery.Spinner.js"></script>
<script src="catalog/view/theme/<?php echo $configTemplate;?>/javascript/layer/layer.js"></script>
<body>
<header>
    <h1 class="logoIcon" style="font-size:.85rem;">#</h1>
    <a href="search.html" class="rt_searchIcon">%</a>
</header>
