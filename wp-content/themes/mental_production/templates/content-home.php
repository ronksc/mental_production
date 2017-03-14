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
                        <a href="<?php get_permalink($result->ID);?>" class="overlay_link"></a>
                    </div>
                </div>		
            </div>
		<?php endforeach; ?>
	</div>
</div>
<div id="project_popup">
  <div class="pj_wrapper">
  	<button title="Close (Esc)" type="button" class="mfp-close">×</button>
    <div class="portfolio-media" style="height: auto">
      <div class="media-content">
        <div class="video-frame">
          <iframe src="http://player.vimeo.com/video/107914322?color=ff4c2f" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" frameborder="0"></iframe>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="portfolio-content">
        <div class="row">
          <div class="span12">
            <div class="heading">
              <h3 class="title">DREAMS</h3>
              <p class="skills">Photography</p>
			</div>
            <div class="content">
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
            </div>
          </div>
        </div>
        <div class="attributes clearfix">
          <div class="attribute">
            <h2 class="title">Photo by:</h2>
            <p class="value">Ashly Simpson</p>
          </div>
          <div class="post-navigation"> <a href="http://demo3.pixflow.net/lightbox/portfolios/the-door/" class="previous">Previous</a> <a href="http://demo3.pixflow.net/lightbox/portfolios/new-style/" class="next">Next</a></div>
        </div>
      </div>
      <div class="separator"></div>
      <div class="related-portfolio clearfix">
        <div class="title">Related Entries</div>
        <div class="item">
          <div class="item-image">
            <div class="related-thumb" style="background-image: url('http://demo3.pixflow.net/lightbox/wp-content/uploads/sites/46/2014/12/1212-1406801270-270x200.jpg'); position: relative;"></div>
            <div class="image-overlay"></div>
          </div>
          <div class="related-info" style="bottom: -56px;">
            <div class="overlay-wrapper">
              <div class="overlay"> <a href="http://demo3.pixflow.net/lightbox/portfolios/new-style/" class="overlay-link">
                <h3 class="overlay-title">NEW STYLE</h3>
                <div class="overlay-category">Fashion, Photography</div>
                </a></div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="item-image">
            <div class="related-thumb" style="background-image: url('http://demo3.pixflow.net/lightbox/wp-content/uploads/sites/46/2015/01/SvRQ8dp5ZlGzi4Ek-270x200.jpg'); position: relative;"></div>
            <div class="image-overlay"></div>
          </div>
          <div class="related-info" style="bottom: -56px;">
            <div class="overlay-wrapper">
              <div class="overlay"> <a href="http://demo3.pixflow.net/lightbox/portfolios/fancy-vision/" class="overlay-link">
                <h3 class="overlay-title">FANCY VISION</h3>
                <div class="overlay-category">Photography</div>
                </a></div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="item-image">
            <div class="related-thumb" style="background-image: url('http://demo3.pixflow.net/lightbox/wp-content/uploads/sites/46/2014/12/Thisispaper_Gardening-38a-270x200.jpg'); position: relative;"></div>
            <div class="image-overlay"></div>
          </div>
          <div class="related-info" style="bottom: -56px;">
            <div class="overlay-wrapper">
              <div class="overlay"> <a href="http://demo3.pixflow.net/lightbox/portfolios/ikea-stuff/" class="overlay-link">
                <h3 class="overlay-title">IKEA STUFF</h3>
                <div class="overlay-category">Design, Photography</div>
                </a></div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="item-image">
            <div class="related-thumb" style="background-image: url('http://demo3.pixflow.net/lightbox/wp-content/uploads/sites/46/2015/01/O0brja5Qx6VXR9fA-270x200.jpg'); position: relative;"></div>
            <div class="image-overlay"></div>
          </div>
          <div class="related-info" style="bottom: -56px;">
            <div class="overlay-wrapper">
              <div class="overlay"> <a href="http://demo3.pixflow.net/lightbox/portfolios/1405/" class="overlay-link">
                <h3 class="overlay-title">LIGHTS</h3>
                <div class="overlay-category">Branding, Photography</div>
                </a></div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="item-image">
            <div class="related-thumb" style="background-image: url('http://demo3.pixflow.net/lightbox/wp-content/uploads/sites/46/2015/01/2523-270x200.jpg'); position: relative;"></div>
            <div class="image-overlay"></div>
          </div>
          <div class="related-info" style="bottom: -56px;">
            <div class="overlay-wrapper">
              <div class="overlay"> <a href="http://demo3.pixflow.net/lightbox/portfolios/sun-glasses/" class="overlay-link">
                <h3 class="overlay-title">SUNGLASSES</h3>
                <div class="overlay-category">Fashion, Photography</div>
                </a></div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="item-image">
            <div class="related-thumb" style="background-image: url('http://demo3.pixflow.net/lightbox/wp-content/uploads/sites/46/2014/12/2545-270x200.jpg'); position: relative;"></div>
            <div class="image-overlay"></div>
          </div>
          <div class="related-info" style="bottom: -56px;">
            <div class="overlay-wrapper">
              <div class="overlay"> <a href="http://demo3.pixflow.net/lightbox/portfolios/226/" class="overlay-link">
                <h3 class="overlay-title">FASHION SERVED</h3>
                <div class="overlay-category">Branding, Photography</div>
                </a></div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="item-image">
            <div class="related-thumb" style="background-image: url('http://demo3.pixflow.net/lightbox/wp-content/uploads/sites/46/2015/01/9e7b5b38901dd20febbaee11c55296ce-270x200.jpg'); position: relative;"></div>
            <div class="image-overlay"></div>
          </div>
          <div class="related-info" style="bottom: -56px;">
            <div class="overlay-wrapper">
              <div class="overlay"> <a href="http://demo3.pixflow.net/lightbox/portfolios/1400/" class="overlay-link">
                <h3 class="overlay-title">ROBAT CHARACTER</h3>
                <div class="overlay-category">Photography</div>
                </a></div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="item-image">
            <div class="related-thumb" style="background-image: url('http://demo3.pixflow.net/lightbox/wp-content/uploads/sites/46/2015/01/Vishesh_Verma_02-270x200.jpg'); position: relative;"></div>
            <div class="image-overlay"></div>
          </div>
          <div class="related-info" style="bottom: -56px;">
            <div class="overlay-wrapper">
              <div class="overlay"> <a href="http://demo3.pixflow.net/lightbox/portfolios/1370/" class="overlay-link">
                <h3 class="overlay-title">BEAUTY TIPS</h3>
                <div class="overlay-category">Photography</div>
                </a></div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="item-image">
            <div class="related-thumb" style="background-image: url('http://demo3.pixflow.net/lightbox/wp-content/uploads/sites/46/2014/12/42-270x200.jpg'); position: relative;"></div>
            <div class="image-overlay"></div>
          </div>
          <div class="related-info" style="bottom: -56px;">
            <div class="overlay-wrapper">
              <div class="overlay"> <a href="http://demo3.pixflow.net/lightbox/portfolios/new-season/" class="overlay-link">
                <h3 class="overlay-title">SUMMERTIME</h3>
                <div class="overlay-category">Photography</div>
                </a></div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="item-image">
            <div class="related-thumb" style="background-image: url('http://demo3.pixflow.net/lightbox/wp-content/uploads/sites/46/2015/01/colaj-270x200.jpg'); position: relative;"></div>
            <div class="image-overlay"></div>
          </div>
          <div class="related-info" style="bottom: -56px;">
            <div class="overlay-wrapper">
              <div class="overlay"> <a href="http://demo3.pixflow.net/lightbox/portfolios/tim-knufman/" class="overlay-link">
                <h3 class="overlay-title">TIM KNUFMAN</h3>
                <div class="overlay-category">Photography</div>
                </a></div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="item-image">
            <div class="related-thumb" style="background-image: url('http://demo3.pixflow.net/lightbox/wp-content/uploads/sites/46/2014/12/another-country-stool-one-oak-natural-009_4d1250e9-33c7-4703-ba67-4d9c743b5496-270x200.jpeg'); position: relative;"></div>
            <div class="image-overlay"></div>
          </div>
          <div class="related-info" style="bottom: -56px;">
            <div class="overlay-wrapper">
              <div class="overlay"> <a href="http://demo3.pixflow.net/lightbox/portfolios/furniture-design/" class="overlay-link">
                <h3 class="overlay-title">FURNITURE DESIGN</h3>
                <div class="overlay-category">Design, Photography</div>
                </a></div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="item-image">
            <div class="related-thumb" style="background-image: url('http://demo3.pixflow.net/lightbox/wp-content/uploads/sites/46/2014/12/AOZzHabmM3ToEN2g-270x200.jpg'); position: relative;"></div>
            <div class="image-overlay"></div>
          </div>
          <div class="related-info" style="bottom: -56px;">
            <div class="overlay-wrapper">
              <div class="overlay"> <a href="http://demo3.pixflow.net/lightbox/portfolios/1416/" class="overlay-link">
                <h3 class="overlay-title">DESIRES</h3>
                <div class="overlay-category">Branding, Photography</div>
                </a></div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="item-image">
            <div class="related-thumb" style="background-image: url('http://demo3.pixflow.net/lightbox/wp-content/uploads/sites/46/2014/12/y5y61-270x200.jpg'); position: relative;"></div>
            <div class="image-overlay"></div>
          </div>
          <div class="related-info" style="bottom: -56px;">
            <div class="overlay-wrapper">
              <div class="overlay"> <a href="http://demo3.pixflow.net/lightbox/portfolios/white-zone/" class="overlay-link">
                <h3 class="overlay-title">WHITE ZONE</h3>
                <div class="overlay-category">Photography</div>
                </a></div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="item-image">
            <div class="related-thumb" style="background-image: url('http://demo3.pixflow.net/lightbox/wp-content/uploads/sites/46/2014/12/TC_ecoBag1-270x200.png'); position: relative;"></div>
            <div class="image-overlay"></div>
          </div>
          <div class="related-info" style="bottom: -56px;">
            <div class="overlay-wrapper">
              <div class="overlay"> <a href="http://demo3.pixflow.net/lightbox/portfolios/shopping-bag/" class="overlay-link">
                <h3 class="overlay-title">SHOPPING BAG</h3>
                <div class="overlay-category">Photography</div>
                </a></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
