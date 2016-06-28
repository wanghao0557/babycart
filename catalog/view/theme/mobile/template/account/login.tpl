<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
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
    <div id="babycart-login" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <form class="form-horizontal" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <fieldset>
          <legend>
            <h2 class="hide"><?php echo $text_returning_customer; ?></h2>
            <span><?php echo $text_i_am_returning_customer; ?></span>
          </legend>
          <div class="form-group">
            <label class="control-label col-sm-4" for="input-email"><?php echo $entry_email; ?>
            </label>
            <div class="col-sm-5">  
              <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-4" for="input-password"><?php echo $entry_password; ?>
            </label>
            <div class="col-sm-5">
              <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
              <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-4 col-sm-5">
              <input type="submit" value="<?php echo $button_login; ?>" class="btn btn-lg btn-primary" />
              <?php if ($redirect) { ?>
              <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
              <?php } ?>
            </div>
          </div>
        </fieldset>
      </form>
      <?php echo $content_bottom; ?>
    </div>
    <!--<?php echo $column_right; ?>-->
      <div class="bform-aside col-sm-3">
        <div class="bform-aside-inner">
          <h2 class="hide"><?php echo $text_new_customer; ?></h2>
          <p><strong><?php echo $text_register; ?></strong></p>
          <p><?php echo $text_register_account; ?></p>
          <a href="<?php echo $register; ?>" class="btn btn-default">注册</a>
        </div>
      </div>
    </div>
</div>
<?php echo $footer; ?>