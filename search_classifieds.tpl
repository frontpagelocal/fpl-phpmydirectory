<?php if($classified_count) { ?>
    <div class="classifieds_results">
        <div align="left"><?php echo $lang['public_search_classifieds_results']; ?>: <b><?php echo $classified_count; ?></b><br></div><br />
        <ol>
            <?php foreach($classified_results as $classified) { ?>
                <li>
                <?php if($classified['image_url']) { ?>
                    <div class="image"><a href="<?php echo $classified['url']; ?>"><img border="0" src="<?php echo $classified['image_url']; ?>" alt="<?php echo $this->escape($classified['title']); ?>" /></a></div> 
                <?php } ?>
                <div class="classified_details">
                    <span class="classified_title"><a href="<?php echo $classified['url']; ?>"><?php echo $this->escape($classified['title']); ?></a></span> (<a href="<?php echo $classified['listing_url']; ?>"><?php echo $lang['public_search_classifieds_view']; ?></a>)<br />
                    <?php echo $this->escape($classified['description']); ?>
                </div>
                </li>
            <?php } ?>
        </ol>
    </div>
    <div align="center">
        <?php echo $page_navigation; ?>
    </div>
<?php } else { ?>
    <?php echo $lang['public_search_classifieds_no_results']; ?>
<?php } ?>
