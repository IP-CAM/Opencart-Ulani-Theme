
<?php if (count($currencies) > 1) { ?>
<div class="currency-wrapper">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="currency">
  <div class="btn-group">
    <button type="button" class="dropdown-toggle" data-toggle="dropdown">
      <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['symbol_left'] && $currency['code'] == $code) { ?>
      <span><span class="symbol"><?php echo $currency['symbol_left']; ?></span><span class="text-label"><?php echo $currency['title']; ?></span></span>
      <?php } elseif ($currency['symbol_right'] && $currency['code'] == $code) { ?>
      <span><?php echo $currency['symbol_right']; ?><?php echo $currency['title']; ?></span>
      <?php } ?>
      <?php } ?>
     
      <i class="pull-right fa fa-angle-down"></i>
    </button>
    <ul class="dropdown-menu">
      <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['symbol_left']) { ?>
      <li><a class="currency-select list-item" href="javascript:void(0);" data-name="<?php echo $currency['code']; ?>"> <span class="item-name pull-left"><?php echo $currency['title']; ?></span><span class="item-symbol pull-right"><?php echo $currency['symbol_left']; ?></span></a></li>
      <?php } else { ?>
      <li><a class="currency-select list-item" href="javascript:void(0);" data-name="<?php echo $currency['code']; ?>"> <span class="item-name pull-left"><?php echo $currency['title']; ?></span><span class="item-symbol pull-right"><?php echo $currency['symbol_right']; ?></span></a></li>
      <?php } ?>
      <?php } ?>
    </ul>
  </div>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div>
<?php } ?>
