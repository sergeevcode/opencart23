<?php echo $header; ?>
    <main class="main categories-bg">
        <div class="container">
            <!-- <div class="categories-content-bg"></div> -->
            <div class="breadcrumbs">
                <ul class="breadcrumbs__list">
                    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
				    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
				    <?php } ?>
                </ul>
            </div>
            <!-- /.breadcrumbs -->

            <h1 class="main__title"><?php echo $heading_title; ?></h1>
            
            <div class="categories__wrap">
                
                <div class="categories-nav">
                    
                    <div id="accordion" class="accordion"> 

                        <div class="accordion-item">
                            <div class="accordion-item__header">
                                Все цветы
                            </div>
                            <!-- /.accordion-item__header -->
                            <div class="accordion-item__content">

                                <div class="accordion-sub-item">
                                    <div class="accordion-sub-item__header">
                                        Букеты
                                    </div>
                                    <div class="accordion-sub-item__content">
                                        <ul>
                                            <li class="active"><a href="#">С розами</a></li>
                                            <li><a href="#">С герберами</a></li>
                                            <li><a href="#">С тюльпанами</a></li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="accordion-sub-item">
                                    <div class="accordion-sub-item__header">
                                        Моно букеты
                                    </div>
                                    <div class="accordion-sub-item__content">
                                        <ul>
                                            <li><a href="#">С розами</a></li>
                                            <li><a href="#">С герберами</a></li>
                                            <li><a href="#">С тюльпанами</a></li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="accordion-sub-item">
                                    <div class="accordion-sub-item__header">
                                        Композиции и корзины
                                    </div>
                                    <div class="accordion-sub-item__content">
                                        <ul>
                                            <li><a href="#">С розами</a></li>
                                            <li><a href="#">С герберами</a></li>
                                            <li><a href="#">С тюльпанами</a></li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="accordion-sub-item">
                                    <div class="accordion-sub-item__header">
                                        Цветы по поводу
                                    </div>
                                    <div class="accordion-sub-item__content">
                                        <ul>
                                            <li><a href="#">С розами</a></li>
                                            <li><a href="#">С герберами</a></li>
                                            <li><a href="#">С тюльпанами</a></li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="accordion-sub-item">
                                    <div class="accordion-sub-item__header">
                                        Букеты по цвету
                                    </div>
                                    <div class="accordion-sub-item__content">
                                        <ul>
                                            <li><a href="#">С розами</a></li>
                                            <li><a href="#">С герберами</a></li>
                                            <li><a href="#">С тюльпанами</a></li>
                                        </ul>
                                    </div>
                                </div>

                            </div>
                            <!-- /.accordion-item__content -->
                        </div>
                        <!-- /.accordion-item -->
                      
                        <div class="accordion-item">
                            <div class="accordion-item__header">
                                Комнатные цветы
                            </div>
                            <!-- /.accordion-item__header -->
                            <div class="accordion-item__content">

                                <div class="accordion-sub-item">
                                    <div class="accordion-sub-item__header">
                                        Моно букеты
                                    </div>
                                    <div class="accordion-sub-item__content">
                                        <ul>
                                            <li><a href="#">С розами</a></li>
                                            <li><a href="#">С герберами</a></li>
                                            <li><a href="#">С тюльпанами</a></li>
                                        </ul>
                                    </div>
                                </div>

                            </div>
                            <!-- /.accordion-item__content -->
                        </div>
                        <!-- /.accordion-item -->
                      
                        <div class="accordion-item">
                            <div class="accordion-item__header">
                                Подарки
                            </div>
                            <!-- /.accordion-item__header -->
                            <div class="accordion-item__content">

                                <div class="accordion-sub-item">
                                    <div class="accordion-sub-item__header">
                                        Моно букеты
                                    </div>
                                </div>

                            </div>
                            <!-- /.accordion-item__content -->
                        </div>
                        <!-- /.accordion-item -->
                      
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
                                        <div class="card__price"><?php echo $product['price']; ?> руб.</div>
                                        <?php } else { ?>
                                        <div class="card__price"><?php echo $product['special']; ?> руб.</div>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div> 
                            <?php } ?>
                        <?php } ?>

                    </div>

                    <div class="pagination categories-pagination">
                        <div class="pagination__wrap">
                            <ul class="pagination-list">
                                <li><a href="#" class="pagination-prev"><i></i></a></li>
                                <li><a href="#" class="active">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">...</a></li>
                                <li><a href="#">6</a></li>
                                <li><a href="#" class="pagination-next"><i></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /.pagination -->
                </div>
                <!-- /.categories-list -->

            </div>
            <!-- /.categories__wrap -->
        </div>
        <!-- /.container -->
    </main>
<?php echo $footer; ?>
