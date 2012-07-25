<?php if(sizeof($listings) < 1) { ?>
    <center>No Listings</center><br />
<?php } else { ?>
    <ul class="box_list">
        <?php foreach($listings as $listing) { ?>
            <li class="box_list">
                <a href="<?php echo $listing['link']; ?>" title="<?php echo $this->escape($listing['title']); ?>"><span class="listing_sidebox_title"><?php echo $this->escape($listing['title']); ?></span></a><br />
                <span class="listing_sidebox_location"><?php echo $this->escape($listing['address']); ?></span><br />
                <span class="listing_sidebox_description"><?php echo $this->escape_html($listing['description_short']); ?></span><br />
                <span class="listing_sidebox_details"><?php echo $this->escape($listing['details']); ?></span>
            </li>
        <?php } ?>
    </ul>
<?php } ?>