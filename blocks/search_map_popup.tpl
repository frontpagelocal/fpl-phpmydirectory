<?php if($logo_thumb_url) { ?>
    <img class="search_map_popup_logo_thumb" src="<?php echo $logo_thumb_url; ?>" /><br /><br />
<?php } ?>
<a href="<?php echo $url; ?>"><?php echo $this->escape($title); ?><br /></a>
<?php echo $this->escape($address); ?>