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
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/theme/default/stylesheet/bootstrap.min.css" rel="stylesheet">
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/babycart.min.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body class="<?php echo $class; ?>">
<div id="top">
  <div class="container">
    <ul class="top-edge pull-left list-inline">
      <li>你好，欢迎来到宝宝购物车</li>
      <?php if($logged) { ?>
        <li class="dropdown toggle-link">
          <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"><?php echo $text_account; ?></a>
        </li>
      <?php } else { ?>
        <li class="toggle-link"><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
        <li class="toggle-link"><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
      <?php } ?>
    </ul>
    <ul class="top-container pull-right list-inline">
      <li class="toggle-link">
        <a href="<?php echo $contact; ?>">
          <i class="fa fa-phone"></i>
          <span><?php echo $telephone; ?></span>
        </a>
      </li>
      <li class="toggle-link top-dropdown">
        <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown">
          <i class="fa fa-user"></i> 
          <span><?php echo $text_account; ?></span> 
          <span class="caret"></span>
        </a>
        <?php if($logged) { ?>
          <ul class="dropdown-menu">
            <li>
              <a href="<?php echo $accout; ?>"><?php echo $text_account; ?></a>
            </li>
            <li>
              <a href="<?php echo $order; ?>"><?php echo $text_order; ?></a>
            </li>
            <li>
              <a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a>
            </li>
            <li>
              <a href="<?php echo $download; ?>"><?php echo $text_download; ?></a>
            </li>
            <li>
              <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
            </li>
          </ul>
        <?php } else { ?>
          <div class="dropdown-menu">你需要先<a href="<?php echo $login; ?>"><?php echo $text_login; ?></a> | <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></div>  
        <?php } ?>
      </li>
      <li class="toggle-link">
        <a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>">
          <i class="fa fa-heart"></i> 
          <span><?php echo $text_wishlist; ?></span>
        </a>
      </li>
      <li class="toggle-link">
        <a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>">
          <i class="fa fa-shopping-cart"></i> 
          <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span>
        </a>
      </li>
      <li class="toggle-link">
        <a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>">
          <i class="fa fa-share"></i> 
          <span><?php echo $text_checkout; ?></span>
        </a>
      </li>
    </ul>
  </div>
</div>
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-5"><?php echo $search; ?>
      </div>
      <div class="col-sm-3"><?php echo $cart; ?></div>
    </div>
  </div>
</header>
<?php if ($categories) { ?>
  <nav id="bnavbar" class="bnavbar">
    <div class="container navbar">
      <ul class="nav navbar-nav">
        <?php foreach($categories as $category) { ?>
          <?php if($category['children']) { ?>
            <li>
              <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) {?>
                <ul class=" dropdown-menu list-inline">
                  <?php foreach($children as $child) { ?>
                    <li>
                      <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                    </li>
                  <?php } ?>  
                </ul>
              <?php } ?>  
            </li>
          <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
<?php } ?>
