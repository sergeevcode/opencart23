<?php echo $header; ?>
    <main class="main contacts-bg">
        <div class="container">

            <h1 class="main__title"><?php echo $heading_title; ?></h1>

            <div class="feedback">
                <div class="feedback__wrap">

                    <div class="feedback-list">
                        <?php foreach ($reviews as $review) { ?>
                        <div class="feedback-item">
                            <div class="feedback-item__content">
                                <p><?php echo $review['text']; ?></p>
                            </div>
                            <div class="feedback-item__descr">
                                <div class="feedback-item__name">
                                    <?php echo $review['author']; ?>
                                </div>
                                <div class="feedback-item__date">
                                    <?php echo $review['date_added']; ?>
                                </div>
                            </div>
                        </div>
                        <!-- /.feedback-item -->
                        <?php } ?>

                    </div>
                    <!-- /.feedback-list -->

                    <div class="feedback-right">

                        <div class="feedback-write">
                            <div class="feedback-write__icon"></div>
                            <button class="btn btn--white feedback-write__btn">Оставить отзыв</button>
                        </div>
                        <!-- /.feedback-write -->

                    </div>
                    <!-- /.feedback-right -->

                </div>
                <!-- /.feedback__wrap -->
            </div>
            <!-- /.feedback -->

        </div>
        <!-- /.container -->
        
    </main>
<?php echo $footer; ?>