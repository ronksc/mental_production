    <footer class="content-info" role="contentinfo" style="position:fixed; bottom:25px; left:0; z-index:1030; width:200px; text-align:right; color:#685128; font-size:12px;">
      <!--<div class="container">-->
        <?php //dynamic_sidebar('sidebar-footer'); ?>
        &copy;2017 Mental Production Ltd.
      <!--</div>-->
    </footer>
</div>
<div class="dark_mask" style="position:absolute; width:100%; height:100%; top:0; left:0; background:rgba(0,0,0,0.8); display:none;"></div>
<div id="mobile_nav">
	<a href="javascript:;" class="mobile_menu_close"><i class="fa fa-times" aria-hidden="true"></i></a>
    <nav class="navbar-collapse mobile-menu" role="navigation">
		<?php
            //Main menu
            if (has_nav_menu('primary_navigation')) :
              wp_nav_menu(array('theme_location' => 'primary_navigation', 'menu_class' => 'nav navbar-nav', 'depth' => 0));
            endif;
        ?>
    </nav>
</div>

<?php wp_footer(); ?> 