<?php
	if ( has_post_thumbnail() ) {
		$feature_image_url = wp_get_attachment_image_src( get_post_thumbnail_id(), 'full' );
	}
?>
<div class="img-container visible-xs visible-sm hidden-md hidden-lg">
    <img src="<?=$feature_image_url[0]?>" class="img-responsive" />
</div>
<div class="container-fluid">
	<div class="clearfix container_bg" style="background-image:url(<?=$feature_image_url[0]?>); ">
        <div class="about_content">
        <?php 
            $content = apply_filters('the_content', $post->post_content); 
			echo $content;
        ?>
        </div>
    </div>
</div>