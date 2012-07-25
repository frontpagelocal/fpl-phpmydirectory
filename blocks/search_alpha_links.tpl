<?php if(count($alpha_letters) > 0) { ?>
    <div align="center" style="width: 100%; margin: 10px 0 30px 0;">
        <?php echo $this->escape($title); ?>: 
        <?php foreach($alpha_letters as $value) { ?>
            <a href="<?php echo BASE_URL; ?>/search_results.php?alpha=<?php echo urlencode($value); ?>"><u><?php echo $this->escape($value); ?></u></a>&nbsp;
        <?php } ?>
    </div>
<?php } ?>