<h1><a href="<?php echo $classified_url; ?>"><?php echo $this->escape($classified_title) ?></a></h1>
<?php echo $lang['public_classified_from']; ?> <a href="<?php echo $listing['url']; ?>"><?php echo $this->escape($listing['title']); ?></a>
<h2><?php echo $lang['public_classified_images']; ?></h2>
<ul id="classified_image_gallery">
    <?php foreach($classified_images as $key=>$image) { ?>
        <li onclick="return show_classified('<?php echo $image['image']; ?>');" style="background-image: url(<?php echo $image['thumb']; ?>);">
            <img src="<?php echo $image['thumb']; ?>">
        </li>
    <?php } ?>
</ul>
<br class="clear" />
<img id="classified_image_gallery_image" src="<?php echo $classified_image; ?>">
<br class="clear" />