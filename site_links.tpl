<h1><?php echo $lang['public_site_links']; ?></h1>
<?php if(sizeof($links) > 0) { ?>
    <?php foreach($links as $key=>$value) { ?>
        <span class="text_large_bold"><?php echo $this->escape($value['title']); ?></span><hr size="1"><br />
        <?php if($value['description']) { ?>
            <?php echo $this->escape($value['description']); ?><br /><br />
        <?php } ?>
        Example:<br />
        <?php echo $value['example']; ?>
        <br /><br />
        Code:<br /><br />
        <textarea style="width: 300px; height: 75px;"><?php echo $value['javascript']; ?></textarea>
        <br /><br />
    <?php } ?>
<?php } ?>