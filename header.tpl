<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html dir="<?php echo $textdirection; ?>" xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $languagecode; ?>" lang="<?php echo $languagecode; ?>">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=<?php echo $lang['charset']; ?>" />
    <?php echo $meta_tags; ?>
    <title><?php echo $this->escape($page_title); ?></title>
    <link rel="icon" href="<?php echo $this->urlCDN('images/favicon.ico'); ?>" type="image/x-icon" />
    <link rel="shortcut icon" href="<?php echo $this->urlCDN('images/favicon.ico'); ?>" type="image/x-icon" />
    <?php echo $canonical_url; ?>
    <?php echo $css; ?>
    <?php echo $javascript; ?>
</head>
<body>
<?php if($maintenance) { ?>
    <div id="maintenance-line">
        <?php echo $lang['maintenance_on']; ?>
    </div>
<?php } ?>
<div id="header">
    <div id="status-line">
        <span id="breadcrumbs">
            <a href="<?php echo BASE_URL; ?>"><img id="home" src="<?php echo $this->urlCDN('images/icon_home.gif'); ?>" border="0" alt="<?php echo $lang['home']; ?>" /></a>
            <a href="<?php echo BASE_URL_NOSSL; ?>"><?php echo $lang['home']; ?></a>
            <?php if($breadcrumb) { ?>
                <?php foreach((array) $breadcrumb as $crumb) { ?>
                    &gt;
                    <?php if($crumb['link']) { ?>
                        <a href="<?php echo $crumb['link']; ?>"><?php echo $this->escape($crumb['text']); ?></a>
                    <?php } else { ?>
                        <?php echo $this->escape($crumb['text']); ?>
                    <?php } ?>
                <?php } ?>
            <?php } ?>
        </span>
        <span id="login-status">
            <?php if(!$username) { ?>
                <a href="<?php echo BASE_URL.MEMBERS_FOLDER; ?>index.php"><?php echo $lang['login']; ?></a>
            <?php } else { ?>
                <?php echo $lang['logged_as']; ?> <?php echo $this->escape($username); ?> ( <a href="<?php echo BASE_URL.MEMBERS_FOLDER; ?>user_index.php"><?php echo $lang['account']; ?></a> )
            <?php } ?>
        </span>
    </div>
    <a href="<?php echo BASE_URL; ?>" title="<?php echo $this->escape($title); ?>"><img id="logo" src="<?php echo $this->urlCDN('images/logo.gif'); ?>" border="0" alt="<?php echo $this->escape($title); ?>" /></a>
</div>