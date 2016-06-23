<div id="latest-goods" class="babycart-group devider20-mb">
  <header class="bgroup-header">
    <h2><?php echo $heading_title; ?></h2>
  </header>
  <div class="bgroup-body">
    <ul class="bgroup-lists row">
      <?php foreach($products as $product) { ?>
        <li class="col-lg-3 col-md-3">
          <div class="blist-header">
            <a href="<?php echo $product['href']; ?>">
              <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['thumb']; ?>" class="img-responsive">
            </a>
          </div>
          <div class="blist-body">
            <h3>
              <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php  echo $product['name']; ?></a>
            </h3>
            <?php if($product['price']) { ?>
              <p class="price">
                <?php if(!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span>
                  <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>
                <?php if($product['tax']) { ?>
                  <span class="hide">
                    <?php echo $text_tax; ?>
                    <?php echo $product['tax']; ?>
                  </span>
                <?php }?>
              </p>
            <?php } ?> 
            <div class="btn-group">
              <button class="btn btn-default add-cart" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');">
                <i class="fa fa-shopping-cart"></i>
                <?php echo $button_cart; ?>
              </button>
              <button class="btn btn-default btn-notext" type="button" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');">
                <i class="fa fa-heart"></i>
              </button>
              <button class="btn btn-default btn-notext" type="button" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');">
                <i class="fa fa-exchange"></i>
              </button>
            </div>
            <div class="hide">
              <p><?php echo $product['description']; ?></p>
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($product['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } else { ?>
                <span>no review</span>
              <?php } ?>
            </div>
          </div>
        </li>
      <?php } ?>
    </ul>
  </div>
</div>
