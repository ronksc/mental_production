<?php 
while (have_posts()) : the_post();
	$post_id = $post->ID;
	$main_video = get_field('main_video', $post_id);
	$author_credit = get_field('author_credit', $post_id);
	$related_projects = get_field('related_project', $post_id);
	
	$term_list = wp_get_post_terms($post_id, 'portfolio-category', array("fields" => "names")); 
	
	$args = array(
	  'numberposts' => -1,
	  'post_type'   => 'portfolio'
	);
	 
	$pagelist = get_posts( $args );
	$pages = array();
	foreach ($pagelist as $page) {
	   $pages[] += $page->ID;
	}
	
	$current = array_search($post_id, $pages);
	$prevID = $pages[$current-1];
	$nextID = $pages[$current+1];
	
	?>
  <div id="project_popup" class="single_paged">
  	<div class="pj_wrapper">
        <div class="portfolio-media" style="height: auto">
          <div class="media-content">
            <div class="video-frame">
              <?php if($main_video) {?>
                <iframe id="main_video" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" frameborder="0"></iframe>
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
                  <h3 class="title"><?php the_title(); ?></h3>
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
              <div class="post-navigation"> 
 			  	<?php if(!empty($prevID)): ?>
				  	<a href="<?=get_permalink($prevID)?>" class="previous">Previous</a>
				<?php endif; ?>
				
				<?php if(!empty($nextID)): ?>
					<a href="<?=get_permalink($nextID)?>" class="next">Next</a>
				<?php endif; ?>
			  </div>
            </div>
          </div>
          <div class="separator"></div>
          <div class="related-portfolio clearfix">
            <div class="title">Related Entries</div>
            
            <?php if(count($related_projects) > 0):
                foreach($related_projects as $project): 
				$project_term_list = wp_get_post_terms($project->ID, 'portfolio-category', array("fields" => "names"));
				$project_image_url = wp_get_attachment_image_src( get_post_thumbnail_id( $project->ID ), 'single-post-thumbnail' );
			?>
            
            <div class="item">
              <div class="item-image">
                <div class="related-thumb" style="background-image: url('<?=$project_image_url[0]?>'); position: relative;"></div>
                <div class="image-overlay"></div>
              </div>
              <div class="related-info">
                <div class="overlay-wrapper">
                  <div class="overlay"> <a href="<?=get_permalink($project->ID)?>" class="overlay-link">
                    <h3 class="overlay-title"><?=$project->post_title?></h3>
                    <div class="overlay-category">
						<?php
							foreach($project_term_list as $project_term):
								echo '<p>'.$project_term.'</p>';
							endforeach;
						?>
					</div>
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
  
  <script type="text/javascript">	
	var main_vid_url = "<?=$main_video[0]['vimeo_link'];?>";
  </script>
<?php endwhile; ?>
