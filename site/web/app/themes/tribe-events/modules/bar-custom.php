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


<div id="tribe-events-bar-custom">

	<form id="tribe-bar-form-custom" class="tribe-clearfix text" name="tribe-bar-form-custom" method="post" action="<?php echo esc_attr( $current_url ); ?>">

		<!-- Mobile Filters Toggle -->

		<span class="search-label">Search</span>


    <div class="input-container">
      <select name="category" id="category" class="select-box-default">
        <option selected>Category</option>
        <option value="category-one">Category One</option>
      </select>
    </div>

    <div class="input-container">
      <input type="text" class="search keyword text-input" name="search" placeholder="Keyword"/>
    </div>


    <div class="input-container">
      <select name="state" id="state" class="state select-box-default">
        <option selected>State</option>
        <option value="Melbourne">Melbourne</option>
      </select>
    </div>



    <input type="submit" class="icon-search"/>
	</form>
	<!-- #tribe-bar-form -->

</div><!-- #tribe-events-bar -->
