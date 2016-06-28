<div id="brand-show<?php echo $module; ?>" class="brand-show">
  <div class="bs-header">
    <h2>品牌展示</h2>
  </div>
  <div class="bs-body">
    <ul class="list-unstyled items row">
      <?php foreach ($banners as $banner) { ?>
        <li class="item col-md-4">
          <div class="brand-logo">
            <a href="<?php echo $banner['link']; ?>" title="<?php echo $banner['title']; ?>">
              <img class="img-responsive" src="<?php echo $banner['image']; ?>">
            </a>
          </div>
          <div class="brand-name">
            <div class="watermark">品牌</div>
            <h3>
              <a href="<?php echo $banner['link']; ?>" title="<?php echo $banner['title']; ?>">
                <?php echo $banner['title']; ?>
              </a>
            </h3>
          </div>
        </li>
      <?php } ?>
    </ul>
  </div>
</div>