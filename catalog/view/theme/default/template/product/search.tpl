<?php echo $header; ?>
    <main class="main categories-bg">
        <div class="container">
            <!-- <div class="categories-content-bg"></div> -->
            <div class="breadcrumbs">
                <ul class="breadcrumbs__list">
                    <?php
                    $i = 0;
                    foreach ($breadcrumbs as $breadcrumb) { 
                    $i++;
                    if ($i == count($breadcrumbs)):
                    ?>
				    <li class="active"><?php echo $breadcrumb['text']; ?></li>
                    <? else: ?>
                    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                    <? endif;?>
				    <?php } ?>
                </ul>
            </div>
            <!-- /.breadcrumbs -->

            <h1 class="main__title"><?php echo $heading_title; ?></h1>
            
            <div class="categories__wrap">
       

                <div class="categories-list" style="margin-left: -10px; margin-right: -10px">
                    <div class="categories-list__wrap">
                        <?php if ($products) { ?>
                            <?php foreach ($products as $product) { ?>
                            <div class="categories-item">
                                <div class="card" style="margin-left: 10px; margin-right: 10px">
                                    <a href="<?php echo $product['href']; ?>">
                                        <div class="card__pic" style="background-image: url('<?php echo $product['thumb']; ?>');">
                                        </div>
                                    </a>
                                    <div class="card__wrap">
                                        <h3 class="card__title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>
                                        <?php if (!$product['special']) { ?>
                                        <div class="card__price"><?php echo $product['price']; ?></div>
                                        <?php } else { ?>
                                        <div class="card__price"><?php echo $product['special']; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div> 
                            <?php } ?>
                        <?php } ?>

                    </div>

                    <?php if($pagination) {?>
                    <div class="pagination categories-pagination">
                        <div class="pagination__wrap">                            
                            <?php echo $pagination; ?>
                        </div>
                    </div>
                    <!-- /.pagination -->
                    <?php } ?>
                </div>
                <!-- /.categories-list -->

            </div>
            <!-- /.categories__wrap -->
        </div>
        <!-- /.container -->
    </main>
<?php echo $footer; ?>