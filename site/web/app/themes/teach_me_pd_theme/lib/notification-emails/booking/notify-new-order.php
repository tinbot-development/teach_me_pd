<?php
/**
 *  New Course Booking Email Notification to Provider
 *
 */



function notify_provider_new_order($order)
{
    $items = $order->get_items();


    foreach ($items as $item) {

      $ticket_id = $item['product_id'];
      $tribe_eventID = get_post_meta($ticket_id, '_tribe_wooticket_for_event', true); //Get Event ID from Ticket/Product ID
      //Get Provider Email and Send New Booking Email
      $providerID = tribe_get_organizer_id($tribe_eventID);

      $provider_email = get_post_meta($providerID, '_OrganizerEmail', true);
      $provider_name = get_the_title($providerID);


      //Acquire Ticket Information
      $ticketData = new Tribe__Events__Tickets__Woo__Main;
      $ticket_details = $ticketData->get_ticket($tribe_eventID, $ticket_id);

      /* Build Email Notification*/

      $subject = 'New Course Booking Notification.';
      $body = '<html>
                  <head>
                    <title>New Course Booking Notification</title>
                  </head>
               <body>
                <div id="wrapper" dir="ltr" style="background-color: #f5f5f5; margin: 0; padding: 70px 0 70px 0; -webkit-text-size-adjust: none !important; width: 100%;">
                  <table border="0" cellpadding="0" cellspacing="0" height="100%" width="100%"><tbody><tr>
                    <td align="center" valign="top">
                      <div id="template_header_image">
                        <p style="margin-top: 0;"><img src="'.get_stylesheet_directory_uri().'/dist/images/logo.png" alt="TeachMe PD" style="border: none; display: inline; font-size: 14px; font-weight: bold; height: auto; line-height: 100%; outline: none; text-decoration: none; text-transform: capitalize;"></p>						</div>
                      <table border="0" cellpadding="0" cellspacing="0" width="600" id="template_container" style="box-shadow: 0 1px 4px rgba(0,0,0,0.1) !important; background-color: #fdfdfd; border: 1px solid #dcdcdc; border-radius: 3px !important;">
                        <tbody><tr>
                          <td align="center" valign="top">
                            <!-- Header -->
                            <table border="0" cellpadding="0" cellspacing="0" width="600" id="template_header" style="background-color: #4bb8cc; border-radius: 3px 3px 0 0 !important; color: #ffffff; border-bottom: 0; font-weight: bold; line-height: 100%; vertical-align: middle; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif;"><tbody><tr>
                              <td id="header_wrapper" style="padding: 36px 48px; display: block;">
                                <h1 style="color: #ffffff; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-size: 30px; font-weight: 300; line-height: 150%; margin: 0; text-align: left; text-shadow: 0 1px 0 #6fc6d6; -webkit-font-smoothing: antialiased;">New Course Booking</h1>
                              </td>
                            </tr></tbody></table>
                            <!-- End Header -->
                          </td>
                        </tr>
                        <tr>
                          <td align="center" valign="top">
                            <!-- Body -->
                            <table border="0" cellpadding="0" cellspacing="0" width="600" id="template_body"><tbody><tr>
                              <td valign="top" id="body_content" style="background-color: #fdfdfd;">
                                <!-- Content -->
                                    <h3 style="width: 500px; margin: 1em auto;">Course Booking Information</h3>
                                    <table class="table" width="500"  style="border-collapse:collapse;border-spacing:0;border-color:#999;border:none; margin: auto;" cellpadding="5" cellspacing="5">
                                      <thead>
                                        <tr>
                                          <th scope="col" style="text-align:left;color:#737373;border:1px solid #e4e4e4;padding:12px">Name</th>
                                          <th scope="col" style="text-align:left;color:#737373;border:1px solid #e4e4e4;padding:12px">Amount</th>
                                          <th scope="col" style="text-align:left;color:#737373;border:1px solid #e4e4e4;padding:12px">Quantity Remaining</th>
                                          <th scope="col" style="text-align:left;color:#737373;border:1px solid #e4e4e4;padding:12px">Details</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <tr>
                                          <td style="text-align:left;color:#737373;border:1px solid #e4e4e4;padding:12px">'.$ticket_details->name.'</td>
                                          <td style="text-align:left;color:#737373;border:1px solid #e4e4e4;padding:12px">$ '.  $item['line_total'] .'</td>
                                          <td style="text-align:left;color:#737373;border:1px solid #e4e4e4;padding:12px">'.$ticket_details->stock.'</td>
                                          <td style="text-align:left;color:#737373;border:1px solid #e4e4e4;padding:12px"><a href="'. admin_url( 'post.php?post=' . absint( $order->id ) . '&action=edit' ) .'">View</a></td>
                                        </tr>
                                      </tbody>
                                    </table>

                                <!-- End Content -->
                              </td>
                            </tr></tbody></table>
                            <!-- End Body -->
                          </td>
                        </tr>
                        <tr>
                          <td align="center" valign="top">
                            <!-- Footer -->
                            <table border="0" cellpadding="20" cellspacing="0" width="600" id="template_footer" style="margin-top: 2em;"><tbody><tr>
                              <td valign="top" style="padding: 0; -webkit-border-radius: 6px;">
                                <table border="0" cellpadding="10" cellspacing="0" width="100%"><tbody><tr>
                                  <td colspan="2" valign="middle" id="credit" style="padding: 0 48px 48px 48px; -webkit-border-radius: 6px; border: 0; color: #93d4e0; font-family: Arial; font-size: 12px; line-height: 125%; text-align: center;">
                                    <p style="margin-top: 1em;">TeachMe PD</p>
                                  </td>
                                </tr></tbody></table>
                              </td>
                            </tr></tbody></table>
                            <!-- End Footer -->
                          </td>
                        </tr>
                        </tbody></table>
                    </td>
                  </tr></tbody></table>
                </div>
              </body>
              </html>
              ';






      // To send HTML mail, the Content-type header must be set
      $headers = 'MIME-Version: 1.0' . "\r\n";
      $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

      // Additional headers
      $headers .= 'From: TeachMe PD <info@teachmepd.com.au>' . "\r\n";


      wp_mail($provider_email, $subject, $body, $headers); //Send Email to User


    }
}




