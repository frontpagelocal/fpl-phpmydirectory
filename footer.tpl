<div id="footer">
    <div align="center">
        <?php if(!ADDON_UNBRANDING) { ?>
            &copy; 2001-<?php echo date("Y"); ?> <a href="http://www.phpmydirectory.com/">phpMyDirectory.com</a> (v. <?php echo $pmd_version; ?>) <br /><br /><br />
        <?php } ?>
        <?php echo $options; ?><br /><br />
    </div>
</div>
<?php if(!$disable_cron) { ?>
<noscript>
    <img src="<?php echo BASE_URL; ?>/cron.php?type=image" alt="" border="0" />
</noscript>
<?php } ?>
</body>
</html>