<footer class="content-info" role="contentinfo" style="">
      <!--<div class="container">-->
        <?php //dynamic_sidebar('sidebar-footer'); ?>
        <div class="social_media_container">
		<?php if(get_field('social_media', 4)): ?>
            <?php while(has_sub_field('social_media', 4)): ?>
                <a href="<?php the_sub_field('social_link'); ?>" target="_blank" style="background-image:url(<?php the_sub_field('social_icon'); ?>)"></a>
            <?php endwhile; ?>
        <?php endif; ?>
        </div>
        &copy;2017 Mental Production Ltd.
      <!--</div>-->
    </footer>
</div>
<div class="dark_mask" style=""></div>
<div id="mobile_nav">
	<a href="javascript:;" class="mobile_menu_close"><i class="fa fa-times" aria-hidden="true"></i></a>
    <nav class="navbar-collapse mobile-menu" role="navigation">
		<?php
            //Main menu
            if (has_nav_menu('primary_navigation')) :
              wp_nav_menu(array('theme_location' => 'primary_navigation', 'menu_class' => 'nav navbar-nav mobile', 'depth' => 0));
            endif;
        ?>
    </nav>
</div>

<?php wp_footer(); ?> 