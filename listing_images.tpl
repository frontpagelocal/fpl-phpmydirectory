<h1><a href="<?php echo $listing_url; ?>"><?php echo $this->escape($listing['title']); ?></a></h1>
<h2><?php echo $lang['public_listing_images']; ?></h2>
<ul id="image_gallery">
    <?php foreach($images as $key=>$image) { ?>
        <li>
            <a class="image_group" rel="image_group" href="<?php echo $image['image']; ?>" title="<?php echo $this->escape($image['title']); ?><?php if($image['description']) { ?> - <?php } ?><?php echo $this->escape($image['description']); ?>">
                <img src="<?php echo $image['thumb']; ?>" alt="<?php echo $this->escape($image['title']); ?><?php if($image['description']) { ?> - <?php } ?><?php echo $this->escape($image['description']); ?>">
            </a>
        </li>
    <?php } ?>
</ul>
<br class="clear" />