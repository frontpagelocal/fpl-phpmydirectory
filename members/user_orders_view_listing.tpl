<ul id="user_orders_view_listing_links">
    <li>
        <a target="_blank" href="<?php echo $listing['url']; ?>">
            <img src="<?php echo $this->urlCDN('members/images/icon_listings_view.gif'); ?>" alt="<?php echo $lang['user_listings_view_public_listing']; ?>" title="<?php echo $lang['user_listings_view_public_listing']; ?>"> <?php echo $lang['user_listings_view_public_listing']; ?>
        </a>
    </li>
    <li>
        <a href="<?php echo BASE_URL.MEMBERS_FOLDER; ?>user_listings.php?action=edit&id=<?php echo $listing['id']; ?>">
            <img src="<?php echo $this->urlCDN('members/images/icon_edit.gif'); ?>" alt="<?php echo $lang['edit']; ?>" title="<?php echo $lang['edit']; ?>"> <?php echo $lang['user_edit']; ?>
        </a>
    </li>
    <?php if($listing['images_limit']) { ?>
    <li>
        <a href="<?php echo BASE_URL.MEMBERS_FOLDER; ?>user_images.php?listing_id=<?php echo $listing['id']; ?>">
            <img src="<?php echo $this->urlCDN('members/images/icon_listings_images.gif'); ?>" alt="<?php echo $lang['user_listings_images']; ?>" title="<?php echo $lang['user_listings_images']; ?>"> <?php echo $lang['user_listings_images']; ?>
        </a>
    </li>
    <?php } ?>
    <?php if($listing['documents_limit']) { ?>
    <li>
        <a href="<?php echo BASE_URL.MEMBERS_FOLDER; ?>user_documents.php?listing_id=<?php echo $listing['id']; ?>">
            <img src="<?php echo $this->urlCDN('members/images/icon_listings_documents.gif'); ?>" alt="<?php echo $lang['user_listings_documents']; ?>" title="<?php echo $lang['user_listings_documents']; ?>"> <?php echo $lang['user_listings_documents']; ?>
        </a>
    </li>
    <?php } ?>
    <?php if($listing['classifieds_limit']) { ?>
    <li>
        <a href="<?php echo BASE_URL.MEMBERS_FOLDER; ?>user_classifieds.php?listing_id=<?php echo $listing['id']; ?>">
            <img src="<?php echo $this->urlCDN('members/images/icon_classifieds.gif'); ?>" alt="<?php echo $lang['user_listings_classifieds']; ?>" title="<?php echo $lang['user_listings_classifieds']; ?>"> <?php echo $lang['user_listings_classifieds']; ?>
        </a>
    </li>
    <?php } ?>
    <?php if($listing['banners_limit']) { ?>
    <li>
        <a href="<?php echo BASE_URL.MEMBERS_FOLDER; ?>user_banners.php?listing_id=<?php echo $listing['id']; ?>">
            <img src="<?php echo $this->urlCDN('members/images/icon_listings_banners.gif'); ?>" alt="<?php echo $lang['user_listings_banners']; ?>" title="<?php echo $lang['user_listings_banners']; ?>"> <?php echo $lang['user_listings_banners']; ?>
        </a>
    </li>
    <?php } ?>
    <?php if(ADDON_SITE_LINKS) { ?>
    <li>
        <a href="<?php echo BASE_URL; ?>/site_links.php?listing_id=<?php echo $listing['id']; ?>">
            <img src="<?php echo $this->urlCDN('members/images/icon_listings_site_links.gif'); ?>" alt="<?php echo $lang['user_listings_site_links']; ?>" title="<?php echo $lang['user_listings_site_links']; ?>"> <?php echo $lang['user_listings_site_links']; ?>
        </a>
    </li>
    <?php } ?>
    <li>
        <a href="<?php echo BASE_URL.MEMBERS_FOLDER; ?>user_listings_statistics.php?listing_id=<?php echo $listing['id']; ?>">
            <img src="<?php echo $this->urlCDN('members/images/icon_listings_statistics.gif'); ?>" alt="<?php echo $lang['user_listings_statistics']; ?>" title="<?php echo $lang['user_listings_statistics']; ?>"> <?php echo $lang['user_listings_statistics']; ?>
        </a>
    </li>
</ul>