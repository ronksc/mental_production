<?php
	if ( has_post_thumbnail() ) {
		$feature_image_url = wp_get_attachment_image_src( get_post_thumbnail_id(), 'full' );
	}
?>

<div class="container-fluid">
	<div class="clearfix" style="background-image:url(<?=$feature_image_url[0]?>); background-size:cover; background-repeat:no-repeat;">
        <div style="margin-left:40%; background:#fff; padding:40px 45px;">
        <?php 
            $content = apply_filters('the_content', $post->post_content); 
			echo $content;
        ?>
        </div>
    </div>
</div>