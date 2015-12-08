
<?php $objlang = $this->registry->get('language'); ?>
<div class="<?php echo str_replace('_','-',$blockid); ?> <?php echo $blockcls;?>" id="pavo-<?php echo str_replace('_','-',$blockid); ?>">
  <div class="container"><div class="inner">
    <div class="row"> 
      <div class="column col-md-3 col-sm-6 col-xs-12">
        <?php
          if($content=$helper->getLangConfig('widget_shopmap')){
            echo $content;
          }
        ?>
      </div> 
      <div class="column col-md-2 col-sm-6 col-xs-12">
        <div class="box">
          <div class="box-heading"><span><?php echo $text_information; ?></span></div>
          <ul class="list">
            <?php foreach ($informations as $information) { ?>
            <li><a href="<?php echo $information['href']; ?>"><i class="fa fa-arrow-right"></i><?php echo $information['title']; ?></a></li>
            <?php } ?>
          </ul>
        </div>        
      </div>   
      <div class="column col-md-2 col-sm-6 col-xs-12">
        <div class="box">
          <div class="box-heading"><span><?php echo $text_account; ?></span></div>
          <ul class="list">
            <li><a href="<?php echo $account; ?>"><i class="fa fa-arrow-right"></i><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><i class="fa fa-arrow-right"></i><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $wishlist; ?>"><i class="fa fa-arrow-right"></i><?php echo $text_wishlist; ?></a></li>
            <li><a href="<?php echo $newsletter; ?>"><i class="fa fa-arrow-right"></i><?php echo $text_newsletter; ?></a></li>
          </ul>
        </div>
      </div>
      <div class="column col-md-2 col-sm-6 col-xs-12">
        <div class="box">
          <div class="box-heading"><span><?php echo $text_extra; ?></span></div>
          <ul class="list">
            <li><a href="<?php echo $manufacturer; ?>"><i class="fa fa-arrow-right"></i><?php echo $text_manufacturer; ?></a></li>
            <li><a href="<?php echo $voucher; ?>"><i class="fa fa-arrow-right"></i><?php echo $text_voucher; ?></a></li>
            <li><a href="<?php echo $affiliate; ?>"><i class="fa fa-arrow-right"></i><?php echo $text_affiliate; ?></a></li>
            <li><a href="<?php echo $special; ?>"><i class="fa fa-arrow-right"></i><?php echo $text_special; ?></a></li>
          </ul>
        </div>
      </div>
      <div class="column col-md-3 col-sm-6 col-xs-12">
        <div class="box">
          <div class="box-heading"><span><?php echo $text_service; ?></span></div>
          <ul class="list">
            <li><a href="<?php echo $contact; ?>"><i class="fa fa-arrow-right"></i><?php echo $text_contact; ?></a></li>
            <li><a href="<?php echo $return; ?>"><i class="fa fa-arrow-right"></i><?php echo $text_return; ?></a></li>
            <li><a href="<?php echo $sitemap; ?>"><i class="fa fa-arrow-right"></i><?php echo $text_sitemap; ?></a></li>
            <li><a href="<?php echo $voucher; ?>"><i class="fa fa-arrow-right"></i><?php echo $text_voucher; ?></a></li>
          </ul>
        </div>
      </div>      
    </div>
  </div></div>
</div>

