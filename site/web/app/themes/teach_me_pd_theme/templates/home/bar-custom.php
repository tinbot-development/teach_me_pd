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

	<form id="tribe-bar-form-custom" class="tribe-clearfix text" name="tribe-bar-form-custom" method="post" action="<?php echo get_bloginfo('url')?>/courses-grid/">

		<!-- Mobile Filters Toggle -->

		<span class="search-label">Search</span>


    <div class="input-container">
      <select name="category" id="category" class="select-box-default">
        <option selected>Category</option>
        <option value="Personal Development">Personal Development</option>
      </select>
    </div>

    <div class="input-container">
      <input type="text" class="search keyword text-input" name="search" placeholder="Keyword"/>
    </div>


    <div class="input-container">
      <select name="state" id="state" class="state select-box-default">
        <option selected>State</option>
        <option value="Melbourne">Melbourne</option>
        <option value="Australian Capital Territory">Australian Capital Territory</option>
        <option value="New South Wales">New South Wales</option>
        <option value="Victoria">Victoria</option>
        <option value="Queensland">Queensland</option>
        <option value="South Australia">South Australia</option>
        <option value="Western Australia">Western Australia</option>
        <option value="Tasmania">Tasmania</option>
        <option value="Northern Territory">Northern Territory</option>
      </select>
    </div>



    <input type="submit" class="icon-search"/>
	</form>
	<!-- #tribe-bar-form -->

</div><!-- #tribe-events-bar -->
