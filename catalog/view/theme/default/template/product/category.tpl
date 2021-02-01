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
                
                <div class="categories-nav">
                    
                    <div id="accordion" class="accordion"> 

                        <?php foreach($categories as $category) { ?>
                        <div class="accordion-item">
                            <?php if ($category['children']) {?>
                            <div class="accordion-item__header">
                                <?php echo ($category['name']) ?>
                            </div>
                            <!-- /.accordion-item__header -->
                            <div class="accordion-item__content">
                                <?php foreach($category['children'] as $children) { ?>
                                <div class="accordion-sub-item">
                                    <?php if ($children['children']) { ?>
                                    <div class="accordion-sub-item__header">
                                        <?php echo $children['name'] ?>
                                    </div>
                                    <div class="accordion-sub-item__content">
                                        <ul>
                                            <?php foreach($children['children'] as $child) {?> 
                                            <li><a href="<?php echo $child['href']?>"><?php echo $child['name']?></a></li>
                                            <?php } ?>
                                        </ul>
                                    </div>
                                    <?php } else { ?>
                                    <div class="accordion-sub-item__header">
                                        <a href="<?php echo $children['href'] ?>"><?php echo $children['name'] ?></a>
                                    </div>
                                    <?php } ?>
                                </div>
                                <?php } ?>
                                

                            </div>
                            <?php } else {?> 
                            <div class="accordion-item__header without-chevron" onclick="location.replace('<?php echo $category['href'] ?>')">
                                <a href="<?php echo $category['href'] ?>"><?php echo ($category['name']) ?></a>
                            </div>
                            <?php } ?>
                            <!-- /.accordion-item__content -->
                        </div>
                        <!-- /.accordion-item -->
                        <?php } ?>

                      </div>

                </div>
                <!-- /.categories-nav -->

                <div class="categories-list">
                    <div class="categories-list__wrap">
                        <?php if ($products) { ?>
                            <?php foreach ($products as $product) { ?>
                            <div class="categories-item">
                                <div class="card">
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
    <section class="page-descr">
        <div class="container">
            <div class="page-descr__wrap">
                <div class="page-descr__img">
                    <img src="<?php echo $thumb?>" alt="<?php echo $heading_title?>">
                </div>
                <!-- /.page-descr__img -->
    
                <div class="page-descr__txt">
                    <h2 class="page-descr__title"><?php echo $heading_title?></h2>
                    <?php echo $description?>
                </div>
                <!-- /.page-descr__txt -->
            </div>
            <!-- /.page-descr__wrap -->
        </div>
        <!-- /.container -->
    </section>
    <!-- /.page-descr -->

<?php echo $footer; ?>
