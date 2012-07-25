<?php if($document_count) { ?>
    <div class="document_results">
        <div align="left"><?php echo $lang['public_search_documents_results']; ?>: <b><?php echo $document_count; ?></b><br></div><br />
        <ol>
            <?php foreach($document_results as $document) { ?>
                <li>
                <div class="document_details">
                    <span class="document_title"><a href="<?php echo $this->escape($document['url']); ?>"><?php echo $document['title']; ?></a></span> (<a href="<?php echo $document['document_url']; ?>"><?php echo $lang['public_search_documents_download']; ?></a>)<br />
                    <?php echo $this->escape($document['description']); ?>
                </div>
                </li>
            <?php } ?>
        </ol>
    </div>
    <div align="center">
        <?php echo $page_navigation; ?>
    </div>
<?php } else { ?>
    <?php echo $lang['public_search_documents_no_results']; ?>
<?php } ?>