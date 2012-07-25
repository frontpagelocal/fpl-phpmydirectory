<div id="content_detail">
    <h1><?php echo $this->escape($title); ?></h1>
    <?php if($listing_title) { ?>
        <?php echo $lang['public_classified_from']; ?> <a href="<?php echo $listing_url; ?>"><?php echo $this->escape($listing_title); ?></a>
    <?php } ?>
    <h2><?php echo $lang['public_classified_overview']; ?></h2>
    <span class="label"><?php echo $lang['public_classified_date']; ?>:</span> <?php echo $this->escape($date); ?><br />
    <?php if($expire_date) { ?>
        <span class="label"><?php echo $lang['public_classified_expire_date']; ?>:</span> <?php echo $this->escape($expire_date); ?><br />
    <?php } ?>
    <?php if($price) { ?>
        <span class="label"><?php echo $lang['public_classified_price']; ?>:</span> <?php echo $this->escape($price); ?><br />
    <?php } ?>
    <?php if($www OR $buy_url) { ?>
        <h2><?php echo $lang['public_classified_options']; ?></h2>
        <?php if($www) { ?>
            <a target="_blank" href="<?php echo $this->escape($www); ?>"><?php echo $lang['public_classified_view']; ?></a><br />
        <?php } ?>
        <?php if($buy_url) { ?>
            <a target="_blank" href="<?php echo $this->escape($buy_url); ?>"><?php echo $lang['public_classified_buy']; ?></a><br />
        <?php } ?>
    <?php } ?>
    <?php if($description) { ?>
        <h2><?php echo $lang['public_classified_description']; ?></h2>
        <?php echo $this->escape_html($description); ?>
    <?php } ?>
    <?php if($other_classifieds) { ?>
        <h2><?php echo $lang['public_classified_other']; ?> <?php echo $this->escape($listing_title); ?></h2>
        <?php foreach($other_classifieds AS $classified) { ?>
            <a href="<?php echo $classified['url']; ?>"><?php echo $this->escape($classified['title']); ?></a><br />
        <?php } ?>
    <?php } ?>
</div>
<div id="content_detail_2">
    <h2><?php echo $lang['public_classified_images']; ?></h2>
    <?php foreach($classified_images AS $image) { ?>
        <a rel="image_group1" title="<?php echo $this->escape($title); ?>" class="image_group" href="<?php echo $image['image_url']; ?>">
            <img border="0" src="<?php echo $image['thumbnail_url']; ?>" />
        </a>
        <br /><br />
    <?php } ?>
</div>