<?php 
  /*
  * @package Framework for Opencart 2.0
  * @version 2.0
  * @author http://www.pavothemes.com
  * @copyright Copyright (C) Feb 2013 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
  * @license   GNU General Public License version 2
  */
  require_once(DIR_SYSTEM . 'pavothemes/loader.php');
  $config = $this->registry->get('config'); 
  $helper = ThemeControlHelper::getInstance( $this->registry, $config->get('config_template') );
  $layoutID = 1 ;
  $helper->loadFooterModules();
  $objlang = $this->registry->get('language');

?>
 
<!-- 
  $ospans: allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
 -->

<?php if( !($helper->getConfig('enable_pagebuilder') && $helper->isHomepage())  ){ ?>

<?php
  $blockid = 'mass_bottom';
  $blockcls = '';
  $modules = $helper->getModulesByPosition( $blockid ); 
  $ospans = array(1=>6,2=>6);
  require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
?>

<?php } ?>
 
<footer id="footer">
 
  <?php
    $blockid = 'footer_top';
    $blockcls = '';
    $ospans = array();
    require( ThemeControlHelper::getLayoutPath( 'common/block-footcols.tpl' ) );
    if(count($modules) <=0){
      require( ThemeControlHelper::getLayoutPath( 'common/footer/footer_top.tpl' ) );
    }
  ?>



  <?php
    $blockid = 'footer_center';
    $blockcls = '';
    $ospans = array(1=>8,2=>4);
    require( ThemeControlHelper::getLayoutPath( 'common/block-footcols.tpl' ) );
    if(count($modules) <=0){
      require( ThemeControlHelper::getLayoutPath( 'common/footer/footer_center.tpl' ) );
    }
  ?>

  <?php
    $blockid = 'footer_bottom';
    $blockcls = '';
    $tmcols = 'col-sm-6 col-xs-12';
    $ospans = array(1=>6,2=>2,3=>2,4=>2);
    require( ThemeControlHelper::getLayoutPath( 'common/block-footcols.tpl' ) );
    if(count($modules) <=0){
      require( ThemeControlHelper::getLayoutPath( 'common/footer/footer_bottom.tpl' ) );
    }
  ?>

</footer>

<div id="powered">
  <div class="container">
    <div class="inner">
      <div class="copyright pull-left">
        
     Powered by <a href="http://opencart.com/">OpenCart</a> <br/>Original Themes by <a href="http://www.pavothemes.com/" title="Pavothemes - opencart themes clubs">Pavothemes</a> <br/>Modified by <a href="http://kovloq.com">Dana</a>
      </div>  

      
      </div>
  </div>
</div>


<div id="top"><a class="scrollup" href="#"><i class="fa fa-angle-up"></i><?php echo $objlang->get("Top");?></a></div>

<?php if( $helper->getConfig('enable_paneltool',0) ){  ?>
  <?php  echo $helper->renderAddon( 'panel' );?>
<?php } ?>

</div>
<?php
  $offcanvas = $helper->getConfig('offcanvas','category');
  if($offcanvas == "megamenu") {
      echo $helper->renderAddon( 'offcanvas');
  } else {
      echo $helper->renderAddon( 'offcanvas-category');
  }

  ?> 
</div> 
</body></html>