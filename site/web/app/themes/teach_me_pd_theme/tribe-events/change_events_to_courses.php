<?php

/*
 * Alters event's archive titles
 */
//function tribe_alter_event_archive_titles ( $original_recipe_title, $depth ) {
//
//	// Modify the titles here
//	// Some of these include %1$s and %2$s, these will be replaced with relevant dates
//	$title_upcoming =   'Upcoming Courses'; // List View: Upcoming events
//	$title_past =       'Past Courses'; // List view: Past events
//	$title_range =      'Courses for %1$s - %2$s'; // List view: range of dates being viewed
//	$title_month =      'Courses for %1$s'; // Month View, %1$s = the name of the month
//	$title_day =        'Courses for %1$s'; // Day View, %1$s = the day
//	$title_all =        'All courses for %s'; // showing all recurrences of an event, %s = event title
//	$title_week =       'Courses for week of %s'; // Week view
//
//	// Don't modify anything below this unless you know what it does
//	global $wp_query;
//	$tribe_ecp = Tribe__Events__Main::instance();
//	$date_format = apply_filters( 'tribe_events_pro_page_title_date_format', tribe_get_date_format( true ) );
//
//	// Default Title
//	$title = $title_upcoming;
//
//	// If there's a date selected in the tribe bar, show the date range of the currently showing events
//	if ( isset( $_REQUEST['tribe-bar-date'] ) && $wp_query->have_posts() ) {
//
//		if ( $wp_query->get( 'paged' ) > 1 ) {
//			// if we're on page 1, show the selected tribe-bar-date as the first date in the range
//			$first_event_date = tribe_get_start_date( $wp_query->posts[0], false );
//		} else {
//			//otherwise show the start date of the first event in the results
//			$first_event_date = tribe_event_format_date( $_REQUEST['tribe-bar-date'], false );
//		}
//
//		$last_event_date = tribe_get_end_date( $wp_query->posts[ count( $wp_query->posts ) - 1 ], false );
//		$title = sprintf( $title_range, $first_event_date, $last_event_date );
//	} elseif ( tribe_is_past() ) {
//		$title = $title_past;
//	}
//
//	// Month view title
//	if ( tribe_is_month() ) {
//		$title = sprintf(
//			$title_month,
//			date_i18n( tribe_get_option( 'monthAndYearFormat', 'F Y' ), strtotime( tribe_get_month_view_date() ) )
//		);
//	}
//
//	// Day view title
//	if ( tribe_is_day() ) {
//		$title = sprintf(
//			$title_day,
//			date_i18n( tribe_get_date_format( true ), strtotime( $wp_query->get( 'start_date' ) ) )
//		);
//	}
//
//	// All recurrences of an event
//	if ( function_exists('tribe_is_showing_all') && tribe_is_showing_all() ) {
//		$title = sprintf( $title_all, get_the_title() );
//	}
//
//	// Week view title
//	if ( function_exists('tribe_is_week') && tribe_is_week() ) {
//		$title = sprintf(
//			$title_week,
//			date_i18n( $date_format, strtotime( tribe_get_first_week_day( $wp_query->get( 'start_date' ) ) ) )
//		);
//	}
//
//	if ( is_tax( $tribe_ecp->get_event_taxonomy() ) && $depth ) {
//		$cat = get_queried_object();
//		$title = '<a href="' . esc_url( tribe_get_events_link() ) . '">' . $title . '</a>';
//		$title .= ' &#8250; ' . $cat->name;
//	}
//
//	return $title;
//}
//add_filter( 'tribe_get_events_title', 'tribe_alter_event_archive_titles', 11, 2 );

function tribe_alter_event_archive_titles ( $original_recipe_title, $depth ) {

	// Modify the titles here
	// Some of these include %1$s and %2$s, these will be replaced with relevant dates
	$title_upcoming =   'Upcoming Courses'; // List View: Upcoming events
	$title_past =       'Past Courses'; // List view: Past events
	$title_range =      'Courses for %1$s - %2$s'; // List view: range of dates being viewed
	$title_month =      'Courses for %1$s'; // Month View, %1$s = the name of the month
	$title_day =        'Courses for %1$s'; // Day View, %1$s = the day
	$title_all =        'All courses for %s'; // showing all recurrences of an event, %s = event title
	$title_week =       'Courses for week of %s'; // Week view

	// Don't modify anything below this unless you know what it does
	global $wp_query;
	$tribe_ecp = Tribe__Events__Main::instance();
	$date_format = apply_filters( 'tribe_events_pro_page_title_date_format', tribe_get_date_format( true ) );

	// Default Title
	$title = $title_upcoming;

	// If there's a date selected in the tribe bar, show the date range of the currently showing events
	if ( isset( $_REQUEST['tribe-bar-date'] ) && $wp_query->have_posts() ) {

		if ( $wp_query->get( 'paged' ) > 1 ) {
			// if we're on page 1, show the selected tribe-bar-date as the first date in the range
			$first_event_date = tribe_get_start_date( $wp_query->posts[0], false );
		} else {
			//otherwise show the start date of the first event in the results
			$first_event_date = tribe_event_format_date( $_REQUEST['tribe-bar-date'], false );
		}

		$last_event_date = tribe_get_end_date( $wp_query->posts[ count( $wp_query->posts ) - 1 ], false );
		$title = sprintf( $title_range, $first_event_date, $last_event_date );
	} elseif ( tribe_is_past() ) {
		$title = $title_past;
	}

	// Month view title
	if ( tribe_is_month() ) {
		$title = sprintf(
			$title_month,
			date_i18n( tribe_get_option( 'monthAndYearFormat', 'F Y' ), strtotime( tribe_get_month_view_date() ) )
		);
	}

	// Day view title
	if ( tribe_is_day() ) {
		$title = sprintf(
			$title_day,
			date_i18n( tribe_get_date_format( true ), strtotime( $wp_query->get( 'start_date' ) ) )
		);
	}

	// All recurrences of an event
	if ( function_exists('tribe_is_showing_all') && tribe_is_showing_all() ) {
		$title = sprintf( $title_all, get_the_title() );
	}

	// Week view title
	if ( function_exists('tribe_is_week') && tribe_is_week() ) {
		$title = sprintf(
			$title_week,
			date_i18n( $date_format, strtotime( tribe_get_first_week_day( $wp_query->get( 'start_date' ) ) ) )
		);
	}

	if ( is_tax( $tribe_ecp->get_event_taxonomy() ) && $depth ) {
		$cat = get_queried_object();
		$title = '<a href="' . esc_url( tribe_get_events_link() ) . '">' . $title . '</a>';
		$title .= ' &#8250; ' . $cat->name;
	}

	return $title;
}

/**
 * Change Event to Courses
 */
add_filter( 'tribe_event_label_singular', 'event_display_name' );
function event_display_name() {
  return 'Course';
}

add_filter( 'tribe_event_label_plural', 'event_display_name_plural' );
function event_display_name_plural() {
  return 'Courses';
}
