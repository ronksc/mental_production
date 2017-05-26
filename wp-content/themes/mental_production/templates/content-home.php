<div class="project_grid_container">
	<div id="project_grid">
    	<?php
		$args = array( 'numberposts' => -1, 'post_type' => 'portfolio', 'post_status' => 'publish', 'order' => 'ASC', 'orderby' => 'menu_order', 'suppress_filters' => 0);
		$results = get_posts( $args );
		foreach( $results as $result ) : 
			$home_display_image = get_field('home_display_image', $result->ID);
			$home_display_width = get_field('home_display_width', $result->ID);
			
			//Returns Array of Term Names for "my_taxonomy"
			$term_list = wp_get_post_terms($result->ID, 'portfolio-category', array("fields" => "names"));
			//print_r($term_list);
			
			$category_class = strtolower(implode(" ", $term_list));
		?>
			<div class="grid_item <?=$home_display_width?> <?=$category_class?>">
                <div class="image_wrapper">
                    <img src="<?=$home_display_image?>" class="img-responsive" />
                </div>
                <!--<div class="media-video"></div>-->
                <div class="overlay_wrapper">
                    <div class="overlay_content">
                        <div class="overlay">
                            <h3 class="overlay_title"><?=get_the_title($result->ID); ?></h3>
                            <div class="overlay_category">
							<?php
                            foreach($term_list as $term):
                                echo '<p>'.$term.'</p>';
                            endforeach;
                            ?>
                            </div>
                        </div>
                        <a href="<?php get_permalink($result->ID);?>" data-portfolio-id="<?=$result->ID?>" class="overlay_link"></a>
                    </div>
                </div>		
            </div>
		<?php endforeach; ?>
	</div>
</div>
<div id="project_popup"></div>
