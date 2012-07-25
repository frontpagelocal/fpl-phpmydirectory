<?php if($image_count) { ?>
    <div class="image_results">
        <div align="left"><?php echo $lang['public_search_images_results']; ?>: <b><?php echo $image_count; ?></b><br></div><br />
        <ol>
            <?php foreach($image_results as $image) { ?>
                <li>
                <div class="image">
                    <?php if($image['image_url']) { ?>
                        <img src="<?php echo $image['image_url']; ?>">
                    <?php } ?>        
                </div>
                <div class="image_details">
                    <span class="image_title"><?php echo $this->escape($image['title']); ?></span> (<a href="<?php echo $image['url']; ?>"><?php echo $lang['public_search_images_view']; ?></a>)<br />
                    <?php echo $this->escape($image['description']); ?>
                </div>
                </li>
            <?php } ?>
        </ol>
    </div>
    <div align="center">
        <?php echo $page_navigation; ?>
    </div>
<?php } else { ?>
    <?php echo $lang['public_search_images_no_results']; ?>
<?php } ?>