<?php
	//call by framework Auto Search
	// $configsearch = $this->config->get('pavautosearch_module');
	// $autosearch = empty($configsearch)?'':$helper->renderModule( 'module/pavautosearch' );
	//$autosearch = null;

	// $verticalmenu = $this->config->get('pavverticalmenu_module');
	// $verticalmenu = empty($configsearch)?'':$helper->renderModule( 'module/pavverticalmenu' );
	$objlang = $this->registry->get('language');
 	
	$autosearch = $helper->renderModule( 'pavautosearch' );
	$megamenu = $helper->renderModule('pavmegamenu');

?>
<nav id="topbar">
  	<div class="container">
  		<div class="row">
  			<div class="col-md-8 col-sm-8 col-xs-6 header-right">
  				<ul class="login links pull-left">
  					<?php if ($logged) { ?>
						<li><a href="<?php echo $logout; ?>"><i class="fa-fw fa fa-unlock"></i><span class="hidden-xs hidden-sm"><?php echo $text_logout; ?></span></a>
					<?php } else { ?>
						<li><a href="<?php echo $register; ?>"><i class="fa-fw fa fa-key"></i><span class="hidden-xs hidden-sm"><?php echo $text_register; ?></span></a></li>
						<li><a href="<?php echo $login; ?>"><i class="fa-fw fa fa-lock"></i><span class="hidden-xs hidden-sm"><?php echo $text_login; ?></span></a></li>		
    				<?php } ?>					
				</ul>	
  				<ul class="links pull-left">
  					<li><a href="<?php echo $account; ?>"><i class="fa-fw fa fa-user"></i><span class="hidden-xs hidden-sm"><?php echo $text_account; ?></span></a></li>
  					<li><a id="wishlist-total" href="<?php echo $wishlist; ?>"><i class="fa-fw fa fa-list-alt"></i><span class="hidden-xs hidden-sm"><?php echo $text_wishlist; ?></span></a></li>
  					<li><a href="<?php echo $shopping_cart; ?>"><i class="fa-fw fa fa-shopping-cart"></i><span class="hidden-xs hidden-sm"><?php echo $text_shopping_cart;; ?></span></a></li>
						<li><a href="<?php echo $checkout; ?>"><i class="fa-fw fa fa-share"></i><span class="hidden-xs hidden-sm"><?php echo $text_checkout; ?></span></a></li>
  				</ul>
  			</div>
  			<div class="col-md-4 col-sm-4 col-xs-6 header-left">
  				<div class="currency pull-right">
					<?php echo $currency; ?>
				</div>
  				<div class="language pull-right">
					<?php echo $language; ?>
				</div>								  				
			</div>
	    </div>
  	</div><!-- end container -->
</nav>
<!-- { megamenu -->				 
<div id="pav-mainnav" class="mainnav">
	<div class="container"><div class="row">
		<div class="pav-megamenu col-md-12 col-sm-12 col-xs-12">			
			<button data-toggle="offcanvas" class="canvas-menu hidden-lg hidden-md" type="button"><span class="fa fa-bars"></span> Menu</button>
			<?php
			/**
			 * Main Menu modules: as default if do not put megamenu, the theme will use categories menu for main menu
			 */
			$modules = $helper->renderModule('pavmegamenu');

			if (count($modules) && !empty($modules)) { ?>

			    
			<?php echo $modules; ?>
			 

			<?php } elseif ($categories) { ?>

		    <div class="navbar navbar-inverse"> 
		        <nav id="mainmenutop" class="megamenu" role="navigation"> 
		            <div class="navbar-header">
			            <div class="collapse navbar-collapse navbar-ex1-collapse hidden-sm hidden-xs">
			                <ul class="nav navbar-nav megamenu">
			                    <li><a href="<?php echo $home; ?>" title="<?php echo $objlang->get('text_home'); ?>"><?php echo $objlang->get('text_home'); ?></a></li>
				                    <?php foreach ($categories as $category) { ?>
				                        <?php if ($category['children']) { ?>			
				                            <li class="parent dropdown deeper ">
				                                <a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?>
				                                    <span class="caret"></span>
				                                </a>
				                            <?php } else { ?>
				                            <li>
				                                <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
				                            <?php } ?>
				                            <?php if ($category['children']) { ?>
				                                <ul class="dropdown-menu">
				                                    <?php for ($i = 0; $i < count($category['children']);) { ?>
				                                        <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
				                                        <?php for (; $i < $j; $i++) { ?>
				                                            <?php if (isset($category['children'][$i])) { ?>
				                                                <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
				                                            <?php } ?>
				                                        <?php } ?>
				                                    <?php } ?>
				                                </ul>
				                            <?php } ?>
				                        </li>
				                    <?php } ?>		                    
			                </ul>
			            </div>	
		            </div>
		        </nav>
		    </div>   
		<?php } ?>
		</div>		
	</div></div>
</div>				
<!-- { megamenu -->	
<header id="header-main" class="header-main same-height-column">
	<div class="inner"><div class="container">	
		<div class="row">
			<div class="col-md-6 col-sm-4 col-xs-4 column">	
				<?php if( $logoType=='logo-theme'){ ?>
				<div id="logo-theme" class="logo-store">
					<a href="<?php echo $home; ?>">
						<img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
					</a>
				</div>
				<?php } elseif ($logo) { ?>
				<div id="logo" class="logo-store">
					<a href="<?php echo $home; ?>">
						<img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
					</a>
				</div>
				<?php } ?>									
			</div>
			<div class="col-md-6 col-sm-8 col-xs-8 column">								
				<div class="shopping-cart pull-right text-right">
					<?php echo $cart; ?>
				</div>	
				<?php echo $search; ?>			
			</div>
		</div>
	</div></div>
</header> 		  
	



	





