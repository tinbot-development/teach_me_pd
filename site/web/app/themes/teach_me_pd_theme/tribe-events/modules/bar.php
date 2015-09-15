<?php
/**
 * Events Navigation Bar Module Template
 * Renders our events navigation bar used across our views
 *
 * $filters and $views variables are loaded in and coming from
 * the show funcion in: lib/Bar.php
 *
 * @package TribeEventsCalendar
 *
 */
?>

<?php

$filters = tribe_events_get_filters();
$views   = tribe_events_get_views();

$current_url = tribe_events_get_current_filter_url();
?>

<?php do_action( 'tribe_events_bar_before_template' ) ?>
<div id="tribe-events-bar">

	<form id="tribe-bar-form" class="tribe-clearfix text" name="tribe-bar-form" method="post" action="<?php echo esc_attr( $current_url ); ?>">

		<!-- Mobile Filters Toggle -->

		<div id="tribe-bar-collapse-toggle" <?php if ( count( $views ) == 1 ) { ?> class="tribe-bar-collapse-toggle-full-width"<?php } ?>>
        Search <span class="tribe-bar-toggle-arrow"></span>
		</div>
    <div class="col-md-7">
        <div class="row">
            <div class="input-container col-md-3">
              <select name="category" id="category" class="select-box-default">
                <option selected>Category</option>
                <option value="category-one">Category One</option>
              </select>
            </div>

            <div class="input-container col-md-3">
              <input type="text" class="search keyword" name="search" placeholder="Keyword"/>
            </div>


            <div class="input-container col-md-3">
              <select name="state" id="state" class="state select-box-default">
                <option selected>State</option>
                <option value="Melbourne">Melbourne</option>
              </select>
            </div>
        </div>
    </div>

    <input type="submit" class="icon-search"/>
	</form>
	<!-- #tribe-bar-form -->

</div><!-- #tribe-events-bar -->
<?php
do_action( 'tribe_events_bar_after_template' );
