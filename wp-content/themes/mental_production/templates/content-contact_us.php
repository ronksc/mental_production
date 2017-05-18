<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC9JVu4-UO7s-jqLpqCDn3OL3EiwvVFFL4"></script>

<?php
	$location = get_field('office_location');
	$company_name = get_field('company_name');
	$address = get_field('address');
	$telephone = get_field('telephone');
	$email = get_field('email');
?>

<div class="container-fluid">
	<div class="row">
        <div class="map_container">
            <?php if( !empty($location) ): ?>
            <div class="acf-map">
                <div class="marker" data-lat="<?php echo $location['lat']; ?>" data-lng="<?php echo $location['lng']; ?>"></div>
            </div>
            <?php endif; ?>
        </div>
    </div>
    <div class="contact_bar">
        <div class="wrap">
        	<div class="inner_wrap">
                <div class="info">
                    <div class="title">keep in touch</div>
                    <div class="separator"></div>
                    <div class="subtitle"><?=$company_name?></div>
                    <div class="address"><?=$address?></div>
                    <div class="info-wrap">
                        <div class="email"><a href="mailto:<?=$email?>"><?=$email?></a></div>
                        <div class="phone"><?=$telephone?></div>
                        <div class="website"></div>
                        <div class="other-info"></div>
                    </div>
					
					<div class="contact-person">
					<?php 
						$post = get_post($post->ID); 
						$content = apply_filters('the_content', $post->post_content); 
						echo $content;   
					?>
					</div>
                </div>
                <div class="contact-form">
                	<?php echo do_shortcode('[contact-form-7 id="80" title="Contact us form"]'); ?>
                </div>
        	</div>
        </div>
    </div>
</div>