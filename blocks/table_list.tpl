<div class="table-list">
    <table summary="<?php echo $table_summary; ?>">
        <caption>
            <span class="page-numbers-results"><?php echo $page['total_results']; ?> <?php echo $lang['public_general_table_list_found']; ?>, <?php echo $lang['public_general_table_list_page']; ?> <?php echo $page['current_page']; ?> <?php echo $lang['public_general_table_list_of']; ?> <?php echo $page['total_pages']; ?></span>
            <?php if(isset($page['page_select'])) { ?>
                <span class="page-numbers"><div class="form-container"><?php echo $lang['public_general_table_list_page']; ?>: <?php echo $page['page_select']; ?></div></span>
            <?php } ?>
        </caption>
        <thead>
            <tr>
                <?php foreach($columns as $column) { ?>
                    <th scope="col" nowrap><?php echo $column['title']; ?></th>
                <?php } ?>
            </tr>
        </thead>    
        <tfoot>
            <tr>
                <th scope="row" colspan="<?php echo count($columns); ?>">
                    <span class="page-numbers-results">
                        <?php echo $lang['user_general_table_list_results']; ?> <strong><?php echo $page['start_offset']; ?> - <?php echo $page['end_offset']; ?></strong> <?php echo $lang['public_general_table_list_of']; ?> <?php echo $page['total_results']; ?>
                    </span>  
                    <span class="page-numbers">
                        <?php echo $page_navigation; ?>
                    </span>
                </th>
            </tr>
        </tfoot> 
        <tbody>
            <?php if(count($records) > 0) { ?>
                <?php foreach($records as $key=>$record) { ?>
                    <tr<?php if($key%2) { ?> class="odd"<?php } ?>>
                        
                        <?php foreach($columns as $key=>$column) { ?>
                            <?php if($key == 0) { ?>
                                <th scope="row" id="<?php echo $key; ?>"><?php echo $record[$columns[0]['name']]; ?></th>
                            <?php } else { ?>
                                <td<?php if($column['nowrap']) { ?> nowrap<?php }?>><?php echo $record[$column['name']]; ?></td>
                            <?php } ?>
                        <?php } ?>
                    </tr>       
                <?php } ?>
            <?php } else { ?>
                <tr>
                    <th colspan="<?php echo count($columns); ?>" scope="row" style="text-align: center;"><?php echo $empty_content; ?></th>
                </tr>
            <?php } ?>     
        </tbody>        
    </table>
</div>