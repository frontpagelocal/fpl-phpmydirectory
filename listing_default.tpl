<table cellspacing="10" cellpadding="10" border="0" width="90%">
    <tr>
        <td align="left" valign="top" width="60%">
            <?php if($logo_url) { ?>
                <img src="<?php echo $logo_url; ?>" alt="<?php echo $this->escape($title); ?>" title="<?php echo $this->escape($title); ?>" border="0" /><br /><br />
            <?php } ?>
            <span style="font-size: 20px;"><?php echo $this->escape($title); ?></span><br /><br />
            <?php if(isset($rating)) { ?>
                <?php if($rating_allowed) { ?>
                    <script type="text/javascript">
                    //<![CDATA[
                    $(document).ready(function(){
                        $(".one-star, .two-stars, .three-stars, .four-stars, .five-stars").click(function() {
                            $("#current_rating").width($(this).html()*16);
                            $.ajax({data: ({ action: 'save_rating', rating: $(this).html(), listing_id: <?php echo $id; ?>}), success: function() { window.location.href = '<?php echo $this->escape(URL); ?>'; }});
                            return false;
                        });
                    });
                    //]]>
                    </script>
                <?php } ?>
                <ul class="star-rating">
                    <li id="current_rating" class="current-rating" style="width:<?php echo $rating*16; ?>px;"><?php echo $rating; ?> Stars.</li>
                    <?php if($rating_allowed) { ?>
                        <li><a href="#" title="1 <?php echo $lang['public_listing_stars']; ?>" class="one-star">1</a></li>
                        <li><a href="#" title="2 <?php echo $lang['public_listing_stars']; ?>" class="two-stars">2</a></li>
                        <li><a href="#" title="3 <?php echo $lang['public_listing_stars']; ?>" class="three-stars">3</a></li>
                        <li><a href="#" title="4 <?php echo $lang['public_listing_stars']; ?>" class="four-stars">4</a></li>
                        <li><a href="#" title="5 <?php echo $lang['public_listing_stars']; ?>" class="five-stars">5</a></li>
                    <?php } ?>
                </ul>
            <?php } ?>
            <?php echo $description; ?><br /><br /><br />
            <?php echo $this->escape($address); ?><br /><br />
            <?php if($phone) { ?>
                <strong><?php echo $lang['public_listing_phone']; ?></strong>: <?php echo $this->escape($phone); ?><?php if($call) { ?> (<a href="" id="call">Call</a>)<?php } ?><br /><br />
            <?php } ?>
            <?php if($fax) { ?>
                <strong><?php echo $lang['public_listing_fax']; ?></strong>: <?php echo $this->escape($fax); ?><br /><br />
            <?php } ?>
            <?php foreach($custom_fields_groups as $custom_fields_group) { ?>
                <strong><?php echo $this->escape($custom_fields_group['title']); ?></strong><br />
                <?php foreach($custom_fields_group['fields'] AS $field) { ?>
                    <?php if(${"custom_".$field['id']} != '') { ?>
                        <?php if($field['type'] == 'htmleditor') { ?>
                            <?php echo $this->escape($field['name']); ?>: <?php echo $this->escape_html(${"custom_".$field['id']}); ?><br />
                        <?php } else { ?>
                            <?php echo $this->escape($field['name']); ?>: <?php echo $this->escape(${"custom_".$field['id']}); ?><br />
                        <?php } ?>
                    <?php } ?>
                <?php } ?>
                <br />
            <?php } ?>
            <?php if($hours) { ?>
                <strong><?php echo $lang['public_listing_hours']; ?></strong><br />
                <?php foreach($hours AS $hour) { ?>
                    <?php echo $hour['day']; ?> <?php echo $hour['start']; ?> - <?php echo $hour['end']; ?><br />
                <?php } ?>
                <br /><br />
            <?php } ?>
            <?php echo $map; ?>
            <br /><br />
            <?php echo $lang['public_listing_categories']; ?>:<br />
            <?php foreach($categories as $category) { ?>
                <img src="<?php echo $this->urlCDN('images/arrow.gif'); ?>" alt="" />&nbsp;<?php echo $category['path_url']; ?><br />
            <?php } ?>
            <br /><br />
        </td>
        <td align="left" valign="top" class="border">
            <ul class="listing_options">
                <?php if($classifieds_count) { ?>
                    <li class="listing_options" style="background: transparent url(<?php echo $this->urlCDN('images/icon_classifieds.gif'); ?>) no-repeat scroll 0px 0px;">
                        <a href="<?php echo $classifieds_url; ?>"><?php echo $lang['public_listing_classifieds']; ?></a> [<?php echo $classifieds_count; ?>]
                    </li>
                <?php } ?>
                <?php if($images_count) { ?>
                    <li class="listing_options" style="background: transparent url(<?php echo $this->urlCDN('images/icon_images.gif'); ?>) no-repeat scroll 0px 0px;">
                        <a href="<?php echo $images_url; ?>"><?php echo $lang['public_listing_images']; ?></a> [<?php echo $images_count; ?>]
                    </li>
                <?php } ?>
                <?php if($documents_count) { ?>
                    <li class="listing_options" style="background: transparent url(<?php echo $this->urlCDN('images/icon_documents.gif'); ?>) no-repeat scroll 0px 0px;">
                        <a href="<?php echo $documents_url; ?>"><?php echo $lang['public_listing_documents']; ?></a> [<?php echo $documents_count; ?>]
                    </li>
                <?php } ?>
                <?php if($skype_url) { ?>
                    <li class="listing_options" style="background: transparent url(<?php echo $this->urlCDN('images/icon_skype.gif'); ?>) no-repeat scroll 0px 0px;">
                        <a rel="nofollow" href="<?php echo $skype_url; ?>"><?php echo $lang['public_listing_skype']; ?></a>
                    </li>
                <?php } ?>
                <?php if($mail) { ?>
                    <li class="listing_options" style="background: transparent url(<?php echo $this->urlCDN('images/icon_send_message.gif'); ?>) no-repeat scroll 0px 0px;">
                        <a href="<?php echo $mail; ?>"><?php echo $lang['public_listing_send_message']; ?></a>
                    </li>
                <?php } ?>
                <?php if($www_url) { ?>
                    <li class="listing_options" style="background: transparent url(<?php echo $this->urlCDN('images/icon_www.gif'); ?>) no-repeat scroll 0px 0px;">
                        <a <?php echo $www_class;?> <?php echo $www_javascript; ?> href="<?php echo $this->escape($www_url); ?>" target="_blank" id="listing_www"><?php echo $lang['public_listing_www']; ?></a>
                        <?php if($pagerank) { ?>
                            <br /><img src="<?php echo $this->urlCDN('images/pagerank-'.$pagerank.'.gif'); ?>" alt="<?php echo $pagerank; ?>" />
                        <?php } ?>
                    </li>
                <?php } ?>
                <?php if($reviews_add_url) { ?>
                    <li class="listing_options" style="background: transparent url(<?php echo $this->urlCDN('images/icon_reviews_add.gif'); ?>) no-repeat scroll 0px 0px;">
                        <a href="<?php echo $reviews_add_url; ?>"><?php echo $lang['public_listing_reviews_add']; ?></a>
                    </li>
                <?php } ?>
                <?php if($reviews_count) { ?>
                    <li class="listing_options" style="background: transparent url(<?php echo $this->urlCDN('images/icon_reviews_view.gif'); ?>) no-repeat scroll 0px 0px;">
                        <a href="<?php echo $reviews_url; ?>"><?php echo $lang['public_listing_reviews']; ?></a> [<?php echo $reviews_count; ?>]
                    </li>
                <?php } ?>
                <?php if($print) { ?>
                    <li class="listing_options" style="background: transparent url(<?php echo $this->urlCDN('images/icon_print.gif'); ?>) no-repeat scroll 0px 0px;">
                        <a rel="nofollow" href="<?php echo $print; ?>"><?php echo $lang['public_listing_print']; ?></a>
                    </li>
                <?php } ?>
                <?php if($email_friend) { ?>
                    <li class="listing_options" style="background: transparent url(<?php echo $this->urlCDN('images/icon_email_friend.gif'); ?>) no-repeat scroll 0px 0px;">
                        <a href="<?php echo $email_friend; ?>"><?php echo $lang['public_listing_email_friend']; ?></a>
                    </li>
                <?php } ?>
                <?php if($send_to_phone) { ?>
                    <li class="listing_options" style="background: transparent url(<?php echo $this->urlCDN('images/icon_phone.png'); ?>) no-repeat scroll 0px 0px;">
                        <a id="send_to_phone" href=""><?php echo $lang['public_listing_send_to_phone']; ?></a>
                    </li>
                <?php } ?>
                <?php if($pdf_url) { ?>
                    <li class="listing_options" style="background: transparent url(<?php echo $this->urlCDN('images/icon_pdf.gif'); ?>) no-repeat scroll 0px 0px;">
                        <a rel="nofollow" href="<?php echo $pdf_url; ?>" target="_blank"><?php echo $lang['public_listing_pdf_download']; ?></a>
                    </li>
                <?php } ?>
                <?php if($vcard_url) { ?>
                    <li class="listing_options" style="background: transparent url(<?php echo $this->urlCDN('images/icon_vcard.gif'); ?>) no-repeat scroll 0px 0px;">
                        <a rel="nofollow" href="<?php echo $vcard_url; ?>" target="_blank"><?php echo $lang['public_listing_vcard']; ?></a>
                    </li>
                <?php } ?>
                <?php if($favorites_url) { ?>
                    <li class="listing_options" style="background: transparent url(<?php echo $this->urlCDN('images/icon_bookmark.gif'); ?>) no-repeat scroll 0px 0px;">
                        <a href="<?php echo $favorites_url; ?>"><?php echo $favorites_text; ?></a>
                    </li>
                <?php } ?>
                <?php if($suggestion_url) { ?>
                    <li class="listing_options" style="background: transparent url(<?php echo $this->urlCDN('images/icon_listing_suggest.gif'); ?>) no-repeat scroll 0px 0px;">
                        <a href="<?php echo $suggestion_url; ?>"><?php echo $lang['public_listing_suggestion']; ?></a>
                    </li>
                <?php } ?>
                <?php if($claim_url) { ?>
                    <li class="listing_options" style="background: transparent url(<?php echo $this->urlCDN('images/icon_listing_claim.gif'); ?>) no-repeat scroll 0px 0px;">
                        <a href="<?php echo $claim_url; ?>"><?php echo $lang['public_listing_claim']; ?></a>
                    </li>
                <?php } ?>
                <?php if($report_url) { ?>
                    <li class="listing_options" style="background: transparent url(<?php echo $this->urlCDN('images/icon_report_abuse.gif'); ?>) no-repeat scroll 0px 0px;">
                        <a href="<?php echo $report_url; ?>"><?php echo $lang['public_listing_report']; ?></a>
                    </li>
                <?php } ?>
                <li class="listing_options" style="background: transparent url(<?php echo $this->urlCDN('images/icon_addthis.gif'); ?>) no-repeat scroll 0px 0px;">
                    <a href="<?php echo $addthis_url; ?>" onmouseover="return addthis_open(this, '', '[URL]', '[TITLE]');" onmouseout="addthis_close();" onclick="return addthis_sendto();"><?php echo $lang['public_listing_bookmark']; ?></a>
                </li>
            </ul>
        </td>
   </tr>
</table>
