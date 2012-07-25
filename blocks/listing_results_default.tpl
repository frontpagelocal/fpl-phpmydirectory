<li class="listing_results">
    <!--
    <?php if($score) { ?>
        <div class="listing_results_score">
            <?php echo $score; ?>%
        </div>
    <?php } ?>
    <?php if($zip_distance) { ?>
        <div class="listing_results_zip_distance">
            <?php echo $zip_distance; ?>
        </div>
    <?php } ?>
    -->
    <div class="listing_results_logo">
        <?php if($map_marker AND $map_marker < 20) { ?>
            <div class="listing_results_map_marker listing_results_map_marker<?php echo $map_marker; ?>"></div>
        <?php } ?>
        <?php if($logo_url) { ?>
            <a href="<?php echo $link; ?>"><img border="0" src="<?php echo $logo_url; ?>" alt="<?php echo $this->escape($title); ?>" /></a>
        <?php } ?>
    </div>
    <div class="listing_results_listing">
        <div class="listing_results_rating"><?php echo $rating; ?></div>
        <div class="listing_results_title"><a href="<?php echo $link; ?>"><span class="listing_default"><?php echo $this->escape($title); ?></span></a> <?php echo $new.' '.$updated.' '.$hot; ?></div>
        <div class="listing_results_address">
            <?php echo $this->escape($address); ?><br />
        </div>

        <div class="listing_results_description">
             <?php echo $this->escape_html($short_description); ?>
        </div>
    </div>
</li>