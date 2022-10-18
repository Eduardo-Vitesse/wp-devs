<?php get_header(); ?>
<img src="<?php header_image(); ?>" height="<?php echo get_custom_header()->height; ?>" width="<?php echo get_custom_header()->width; ?>" alt="" />
    <div id="content" class="site-content">
        <div id="primary" class="content-area">
            <main id="main" class="site-main">
                <h1>Blog</h1>
                <div class="container">
                    <div class="blog-items">
                        <?php 
                        if(have_posts()):
                            while(have_posts()): the_post();
                            ?>
                                <article>
                                <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
                                <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail('thumb'); ?></a>
                                    <div class="meta-info">
                                        <p>Posted <?= get_the_date(); ?> by <?php the_author_posts_link(); ?></p>
                                        <p>Categories <?php the_category(' '); ?></p>
                                        <p>Posted in by <?php the_tags('', ', '); ?></p>
                                    </div>
                                    <?php the_excerpt(); ?>
                                </article>
                            <?php
                            endwhile;
                            ?>
                                <div class="wpdevs-pagination">
                                    <div class="pages new">
                                        <?php previous_posts_link("<< Newer posts"); ?>
                                    </div>
                                    <div class="pages old">
                                        <?php next_posts_link("Older posts >>"); ?>
                                    </div>
                                </div>
                            <?php
                        else: ?>
                            <p>Nothing yet to be displayed!</p>
                        <?php endif; ?>
                    </div>
                    <?php get_sidebar(); ?>
                </div>
            </main>
        </div>
    </div>
<?php get_footer(); ?>
        