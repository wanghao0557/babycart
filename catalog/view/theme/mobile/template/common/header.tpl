<!DOCTYPE html>
<html lang="<?php echo $lang; ?>">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, maximum-scale=1, minimum-scale=1, user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <title><?php echo $title; ?></title> 
  <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
  <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="http://cdn.bootcss.com/jquery-mobile/1.4.5/jquery.mobile.js" type="text/javascript"></script>
  <link href="catalog/view/theme/mobile/stylesheet/bootstrap.min.css" rel="stylesheet">
  <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
  <link href="catalog/view/theme/mobile/stylesheet/stylesheet.css" rel="stylesheet">
  <link href="catalog/view/theme/mobile/stylesheet/babycart.mobile.css" rel="stylesheet">
  <link href="http://cdn.bootcss.com/jquery-mobile/1.4.5/jquery.mobile.css" rel="stylesheet">
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
  <div data-role="page" class="babycartm jqm-home">
    <header data-role="header" class="bcm-header">
      <div class="bcm-header-logo">
        <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>">
            <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
          </a>
        <?php } else { ?>
          <a href="<?php echo $home; ?>"><?php echo $name; ?></a>
        <?php } ?>
      </div>
      <div class="bcm-header-main">
        <?php if($logged) { ?>
          <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"><?php echo $text_account; ?></a>
        <?php } else { ?>
          <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a>
          <a href="<?php echo $login; ?>"><?php echo $text_login; ?></a>
        <?php } ?>
        <?php echo $cart; ?>
      </div>
    </header>
  <header id="babycart-header" class="devider20-mb">
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
    <nav id="bnavbar" class="bnavbar devider20-mb">
      <div class="container">
        <div class="navbar">
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
      </div>
    </nav>
  <?php } ?>
