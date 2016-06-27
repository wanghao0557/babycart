<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="hide">
        <h3><?php echo $heading_title; ?></h3>
        <?php if ($thumb || $description) { ?>
        <div class="row">
          <?php if ($thumb) { ?>
          <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
          <?php } ?>
          <?php if ($description) { ?>
          <div class="col-sm-10"><?php echo $description; ?></div>
          <?php } ?>
        </div>
        <hr>
        <?php } ?>
      </div>
      <?php if ($categories) { ?>
      <h3 class="hide"><?php echo $text_refine; ?></h3>
      <div class="row devider20-mb bcategory-select">
        <div class="col-sm-12">
          <ul class="list-inline bcategory-lists">
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } ?>
      <?php if ($products) { ?>
      <p class="hide"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p>
      <div class="bcategory-toolbar">
        <div class="row">
          <div class="col-md-4">
            <div class="btn-group">
              <button class="btn btn-default" id="list-view">
                <i title="<?php echo $button_list; ?>" class="fa fa-th-list"></i>
              </button>
              <button class="btn btn-default active" id="grid-view">
                <i title="<?php echo $button_grid; ?>" class="fa fa-th"></i>
              </button>
            </div>
          </div>
          <div class="col-md-5 form-inline">
            <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
            <select id="input-sort" class="form-control" onchange="location = this.value;">
              <?php foreach ($sorts as $sorts) { ?>
              <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
              <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
          <div class="col-md-3 form-inline">
            <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
            <select id="input-limit" class="form-control" onchange="location = this.value;">
              <?php foreach ($limits as $limits) { ?>
              <?php if ($limits['value'] == $limit) { ?>
              <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
      </div>
      <div class="babycart-group babycart-left-product">
        <div class="bgroup-body">
          <ul class="bgroup-lists row">
            <?php foreach($products as $product) { ?>
              <li class="product-layout col-lg-4 col-md-4">
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
                  <div class="view-for-list">
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
                      <p><i>暂无评论</i></p>
                    <?php } ?>
                  </div>                          
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
                </div>
              </li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
