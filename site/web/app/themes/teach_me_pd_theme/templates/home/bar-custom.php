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
        <option value="Arts">The Arts</option>
        <option value="Economics">Economics</option>
        <option value="English">English</option>
        <option value="Geography">Geography</option>
        <option value="IT">I.T.</option>
        <option value="LOTE">LOTE</option>
        <option value="Math">Math</option>
        <option value="Science">Science</option>
        <option value="Social and Well Being">Social and Well Being</option>
      </select>
    </div>

    <div class="input-container">
      <input type="text" class="search keyword text-input" name="search" placeholder="Keyword"/>
    </div>


    <div class="input-container">
      <select name="state" id="state" class="state select-box-default">
        <option selected>State</option>
        <option value="All">All</option>
        <option value="Australian Capital Territory">Australian Capital Territory</option>
        <option value="New South Wales">New South Wales</option>
        <option value="Northern Territory">Northern Territory</option>
        <option value="Queensland">Queensland</option>
        <option value="South Australia">South Australia</option>
        <option value="Tasmania">Tasmania</option>
        <option value="Victoria">Victoria</option>
        <option value="Western Australia">Western Australia</option>
      </select>
    </div>



    <input type="submit" class="icon-search"/>
	</form>
	<!-- #tribe-bar-form -->

</div><!-- #tribe-events-bar -->
