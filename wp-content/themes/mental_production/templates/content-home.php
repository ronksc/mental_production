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
		?>
			<div class="grid_item <?=$home_display_width?>">
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
<div id="project_popup">
	<?php
    	$post_id = 43;
		$main_video = get_field('main_video', $post_id);
		$author_credit = get_field('author_credit', $post_id);
		$related_projects = get_field('related_project', $post_id);
		
		$term_list = wp_get_post_terms($post_id, 'portfolio-category', array("fields" => "names"));
	?>

  <div class="pj_wrapper">
  	<button title="Close (Esc)" type="button" class="mfp-close">×</button>
    <div class="portfolio-media" style="height: auto">
      <div class="media-content">
        <div class="video-frame">
          <?php if($main_video) {?>
          	
            <iframe id="main_video" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" frameborder="0"></iframe>            
	      	<!--<iframe src="http://player.vimeo.com/video/107914322?color=ff4c2f" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" frameborder="0"></iframe>-->
          <?php } else { 
		  	$post_feature_image = get_the_post_thumbnail_url( $post_id, 'full'); ?>
          	<img src="<?=$post_feature_image?>" class="img-responsive" />
          <?php } ?>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="portfolio-content">
        <div class="row">
          <div class="span12">
            <div class="heading">
              <h3 class="title"><?=get_the_title($post_id); ?></h3>
              <?php
				foreach($term_list as $term):
					echo '<p class="skills">'.$term.'</p>';
				endforeach;
			  ?>
			</div>
            <div class="content">
              <?php 
				$post = get_post($post_id); 
				$content = apply_filters('the_content', $post->post_content); 
				echo $content;   
			  ?>
            </div>
          </div>
        </div>
        
        <div class="attributes clearfix">
          <?php if($author_credit){ ?>
          <div class="attribute">
            <h2 class="title">Production by:</h2>
            <p class="value"><?=$author_credit?></p>
          </div>
          <?php } ?>
          <div class="post-navigation"> <a href="#" class="previous">Previous</a> <a href="#" class="next">Next</a></div>
        </div>
      </div>
      <div class="separator"></div>
      <div class="related-portfolio clearfix">
        <div class="title">Related Entries</div>
        
        <?php if(count($related_projects) > 0):
		
		foreach($related_projects as $project):	
		?>
        <div class="item">
          <div class="item-image">
            <div class="related-thumb" style="background-image: url('http://demo3.pixflow.net/lightbox/wp-content/uploads/sites/46/2014/12/1212-1406801270-270x200.jpg'); position: relative;"></div>
            <div class="image-overlay"></div>
          </div>
          <div class="related-info">
            <div class="overlay-wrapper">
              <div class="overlay"> <a href="http://demo3.pixflow.net/lightbox/portfolios/new-style/" class="overlay-link">
                <h3 class="overlay-title">NEW STYLE</h3>
                <div class="overlay-category">Fashion, Photography</div>
                </a></div>
            </div>
          </div>
        </div>
        
        <?php endforeach;
		
		endif;?>
        
      </div>
    </div>
  </div>
</div>
