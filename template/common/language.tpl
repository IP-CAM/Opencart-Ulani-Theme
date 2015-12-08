<?php if (count($languages) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="language">
  <div class="btn-group">
    <button type="button" class="dropdown-toggle" data-toggle="dropdown">
      <?php foreach ($languages as $language) { ?>
      <?php if ($language['code'] == $code) { ?>
      <img class="" src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>">
      <span class="text-label"><?php echo $language['name']; ?></span>
      <?php } ?>
      <?php } ?>
      <i class="pull-right fa fa-angle-down"></i>
    </button>
    <ul class="dropdown-menu">
      <?php foreach ($languages as $language) { ?>
      <li><a href="<?php echo $language['code']; ?>">         
        <span class="pull-left"><?php echo $language['name']; ?></span>
        <img class="pull-right" src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" />
        </a></li>
      <?php } ?>
    </ul>
  </div>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
<?php } ?>
