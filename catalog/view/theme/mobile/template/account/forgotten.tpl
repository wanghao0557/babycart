<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-8'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="forget-password" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1 class="hide"><?php echo $heading_title; ?></h1>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <legend><span><?php echo $text_your_email; ?></span></legend>
          <div class="form-group required">
            <label class="col-sm-4 control-label" for="input-email"><?php echo $entry_email; ?></label>
            <div class="col-sm-5">
              <input type="text" name="email" value="" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
            </div>
          </div>
        </fieldset>
        <div class="form-group">
          <div class="hide pull-left"><a href="<?php echo $back; ?>" class="btn btn-default"><?php echo $button_back; ?></a></div>
          <div class="col-sm-offset-4 col-sm-5">
            <input type="submit" value="确认" class="btn bnt-lg btn-primary" />
          </div>
        </div>
      </form>
      <?php echo $content_bottom; ?></div>
      <div class="col-sm-3 bform-aside"><div class="bform-aside-inner"><?php echo $text_email; ?></div></div>
    <!--<?php echo $column_right; ?>--></div>
</div>
<?php echo $footer; ?>