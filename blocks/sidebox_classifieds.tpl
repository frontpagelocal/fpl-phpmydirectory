<?php if(count($featured_classifieds)) { ?>
    <?php foreach($featured_classifieds as $classified) { ?>
        <?php if($classified['thumb'] != '') { ?>
            <a href="<?php echo $classified['link']; ?>"><img src="<?php echo $classified['thumb']; ?>" border="0"  alt="" /></a><br /><br />
        <?php } ?>
        <a href="<?php echo $classified['link']; ?>"><?php echo $this->escape($classified['title']); ?></a><br />
        <?php echo $this->escape($classified['description']); ?><hr />
    <?php } ?>
<?php } else { ?>
     <center><?php echo $lang['sidebox_classifieds_none']; ?></center><br />
<?php } ?>