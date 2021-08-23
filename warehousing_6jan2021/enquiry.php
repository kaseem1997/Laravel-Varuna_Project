<?php
if(isset($_POST['submit']))
{
   $errorMsgBag                        = array();
   $errorMsgBag['name']                = empty($_POST['name'])?'Please enter name':'';
   $errorMsgBag['email']               = empty($_POST['email'])?'Please enter email':'';
   $errorMsgBag['phone_number']        = empty($_POST['phone_number'])?'Please enter phone number':'';
   $errorMsgBag['organization_name']   = empty($_POST['organization_name'])?'Please enter organization name':'';
   $errorMsgBag['location']            = empty($_POST['location'])?'Please enter location name':'';
   $errorMsgBag = array_filter($errorMsgBag);
   if(empty($errorMsgBag))
   {
      $_POST['email']      = filter_var($_POST['email'], FILTER_SANITIZE_MAGIC_QUOTES);
      $_POST['email']      = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);
      $_POST['email']      = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
      $_POST['name']       = filter_var($_POST['name'], FILTER_SANITIZE_MAGIC_QUOTES);
      $_POST['name']       = filter_var($_POST['name'], FILTER_SANITIZE_STRING);
      $_POST['phone_number']      = filter_var($_POST['phone_number'], FILTER_SANITIZE_MAGIC_QUOTES);
      $_POST['phone_number']      = filter_var($_POST['phone_number'], FILTER_VALIDATE_INT);
      $_POST['location']    = filter_var($_POST['location'], FILTER_SANITIZE_MAGIC_QUOTES);
      $_POST['location']    = filter_var($_POST['location'], FILTER_SANITIZE_STRING);
      $_POST['organization_name']    = filter_var($_POST['organization_name'], FILTER_SANITIZE_MAGIC_QUOTES);
      $_POST['organization_name']    = filter_var($_POST['organization_name'], FILTER_SANITIZE_STRING);
      $_POST['organization_name']    = filter_var($_POST['organization_name'], FILTER_SANITIZE_MAGIC_QUOTES);
      $_POST['industry']    = filter_var($_POST['industry'], FILTER_SANITIZE_MAGIC_QUOTES);
      $_POST['industry']    = filter_var($_POST['industry'], FILTER_VALIDATE_INT);
      $_POST['space_required']      = filter_var($_POST['space_required'], FILTER_SANITIZE_MAGIC_QUOTES);
      $_POST['space_required']      = filter_var($_POST['space_required'], FILTER_VALIDATE_INT);
      
      $errorMsgBag['name']    = empty($_POST['name'])?'Please enter a valid name':'';
      $errorMsgBag['email']   = empty($_POST['email'])?'Please enter a valid email':'';
      $errorMsgBag['phone_number']   = empty($_POST['phone_number'])?'Please enter a valid phone number':'';
      $errorMsgBag['organization_name']   = empty($_POST['organization_name'])?'Please enter a valid organization name':'';
      $errorMsgBag['location']   = empty($_POST['location'])?'Please enter a valid location name':'';
      
      $errorMsgBag = array_filter($errorMsgBag);
      if(empty($errorMsgBag)){
         $industry_values = array('1'=>'Pharmaceuticals','2'=>'FMCG','3'=>'Auto & Tyre','4'=>'Food & Beverages','5'=>'Electrical','6'=>'FMCD','7'=>'Retail','8'=>'Chemical','9'=>'Others');
         $name                = $_POST['name'];
         $email               = $_POST['email'];
         $phone               = $_POST['phone_number'];
         $check_industry      = array_key_exists($_POST['industry'], $industry_values);
         $industry            = $check_industry?$industry_values[$_POST['industry']]:'';
         $organization_name   = $_POST['organization_name'];
         $location            = $_POST['location'];
         $space_required      = $_POST['space_required'];
         if(isset($_SERVER['HTTPS'])){
            $protocol = ($_SERVER['HTTPS'] && $_SERVER['HTTPS'] != "off") ? "https" : "http";
        }
        else{
            $protocol = 'http';
        }
        $where = getcwd();
        $where = explode("/",$where);
        $where = $where[sizeof($where)-1];
        $where = $where=='varuna.net'?'/':'/'.$where;
        $base_url = $protocol."://".$_SERVER['HTTP_HOST'].$where;
        $img_src = $base_url.'/images/logo.png';
        //$to = "marketing.varuna@gmail.com";
        $to = "marketing@varuna.net";
         $admin_mail_subject = "Warehousing Enquiry";
         $admin_mail_txt = '<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet"><body style="width:100% ; margin:0 ; padding:0 ; background-color:#f1f1f1; font-family: "Poppins, sans-serif";"><table cellpadding="0" cellspacing="0" border="0" id="backgroundTable" style="height:auto ; margin:0; padding:0; width:100% ;  background-color: #f1f1f1; color:#222222;"><tr><td><div  style="width:100% ;    border-radius: 8px 8px 0 0;    box-shadow: 0px 0px 24px #0000007d; max-width:600px ; text-align:center ; margin-top:0 ; margin-right: auto ; margin-bottom:0 ; margin-left: auto ;"><table  width="600" align="center" cellpadding="0" cellspacing="0" border="0" style="text-align:center; margin-top:0 ; margin-right: auto ; margin-bottom:0 ; margin-left: auto ; border:none; width: 100% ; max-width:600px ;"><tr><td style="background: #fff; border-radius: 8px 8px 0 0;"><img src="'.$img_src.'" alt="varuna-logo" style=" border-radius: 8px 8px 0 0; padding: 15px 0px;"></td></tr><tr><td width="100%"><table  border="0" cellspacing="0" cellpadding="0" width="100%"><tr><td style="background: #1a2c5e; "><h1 style=" margin: 0;line-height: 29px;font-size: 22px;padding: 14px 0px; text-align: center; color: #fff">You have received <br> an enquiry </h1></td></tr></table>
            <table bgcolor="#FFFFFF" border="0" cellspacing="0" cellpadding="25" width="100%"><tr><td width="100%" bgcolor="#ffffff" style="text-align:left;margin: 0; padding: 15px 25px 0;"><p style="color:#000;  font-size:15px; line-height:19px; margin-top:10px; margin-bottom:20px; padding:0; font-weight:normal;">Hello,</p><p style="color:#000; font-size:14px; line-height:19px; margin:0; padding:0; font-weight:normal;">You have received a new enquiry. See  below for more details.</p><br><p style="color:#000; font-size:14px; line-height:19px; margin-top:0; margin-bottom:10; padding:0; font-weight:normal;">Below is the enquiry summary.</p></td></tr></table>
            <table bgcolor="#FFFFFF" border="0" cellspacing="0" cellpadding="25" width="100%"><tr><td  style="padding-top: 15px;"><p style="margin: 0 0 12px; padding: 0; text-transform: uppercase; color: #000;font-weight: bold; font-size: 17px;">  Details</p><table style="border: 1px solid #000;    padding: 0px;"  border="0" cellspacing="0" cellpadding="25" width="100%">';
            if(!empty($name)){
               $admin_mail_txt.= '<tr>
                  <td style="padding: 11px 20px; margin: 0;  font-size: 15px;  text-align: left; font-weight: bold; border-right: 1px solid #000; text-transform: capitalize; ">Name</td>
                  <td style="padding: 11px 20px; margin: 0; text-align: right; font-size: 13px;">'.$name.'
                  </td>
                </tr>';
             }
             if(!empty($email)){
               $admin_mail_txt.='<tr>
                <td style="padding: 11px 20px; margin: 0;  font-size: 15px;  text-align: left; font-weight: bold; border-right: 1px solid #000; text-transform: capitalize; border-top: 1px solid #000">Email</td>
                <td style="padding: 11px 20px; margin: 0; text-align: right; font-size: 13px; border-top: 1px solid #000">'.$email.'</td>
              </tr>';
            }
            if(!empty($phone)){
               $admin_mail_txt.='<tr>
                <td style="padding: 11px 20px; margin: 0; text-align: left; font-size: 15px; font-weight: bold; border-top: 1px solid #000; border-right: 1px solid #000; text-transform: capitalize;">Phone Number</td>
                <td style="padding: 11px 20px; margin: 0; text-align: right; font-size: 13px; border-top: 1px solid #000;">'.$phone.'</td>
              </tr>';
            }
            if(!empty($organization_name)){
               $admin_mail_txt.='<tr>
                <td style="padding: 11px 20px; margin: 0; text-align: left; font-size: 15px; font-weight: bold; border-top: 1px solid #000; border-right: 1px solid #000; text-transform: capitalize;">Organization Name</td>
                <td style="padding: 11px 20px; margin: 0; text-align: right; font-size: 13px; border-top: 1px solid #000;">'.$organization_name.'</td>
              </tr>';
            }
            if(!empty($industry)){
               $admin_mail_txt.='<tr>
                <td style="padding: 11px 20px; margin: 0; text-align: left; font-size: 15px; font-weight: bold; border-top: 1px solid #000; border-right: 1px solid #000; text-transform: capitalize;">Industry</td>
                <td style="padding: 11px 20px; margin: 0; text-align: right; font-size: 13px; border-top: 1px solid #000;">'.$industry.'</td>
              </tr>';
            }
            if(!empty($location)){
               $admin_mail_txt.='<tr>
                <td style="padding: 11px 20px; margin: 0; text-align: left; font-size: 15px; font-weight: bold; border-top: 1px solid #000; border-right: 1px solid #000; text-transform: capitalize;">Location</td>
                <td style="padding: 11px 20px; margin: 0; text-align: right; font-size: 13px; border-top: 1px solid #000;">'.$location.'</td>
              </tr>';
            }
            if(!empty($space_required)){
               $admin_mail_txt.='<tr>
                <td style="padding: 11px 20px; margin: 0; text-align: left; font-size: 15px; font-weight: bold; border-top: 1px solid #000; border-right: 1px solid #000; text-transform: capitalize;">Space Required</td>
                <td style="padding: 11px 20px; margin: 0; text-align: right; font-size: 13px; border-top: 1px solid #000;">'.$space_required.' Sq. Ft.</td>
              </tr>';
            }
         $admin_mail_txt.='<tr></tr></table></td></tr><tr><td><p style="margin: 0; padding: 0 ; font-size: 18px; text-align:center; color: #000"> Thanks and Regards</p><p style="color: #1a2c5e; margin: 0; padding: 0 ; font-size: 18px; text-align: center;"> Varuna Group</p></td></tr><tr><td style="background: #1a2c5e;    padding: 4px 0px;  border-radius: 0 0 8px 8px;"><p style=" margin: 0; padding: 0 ; font-size: 18px; text-align: center;"><span style="    font-size: 14px; vertical-align: top; display: inline-block; padding: 20px 0;text-align: right;    color: #fff;">'.date('Y').' © Copyright - All Rights Reserved. <br><a href="#" style="color: #fff; text-decoration: none"> Varuna Group </a></span></p></td></tr></table></td></tr></table></div></td></tr></table></body>';
      
         $customer_mail_subject = "We have received your Inquiry";
         $customer_mail_txt = '<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet"><body style="width:100% ; margin:0 ; padding:0 ; background-color:#f1f1f1; font-family: "Poppins, sans-serif";"><table cellpadding="0" cellspacing="0" border="0" id="backgroundTable" style="height:auto ; margin:0; padding:0; width:100% ;  background-color: #f1f1f1; color:#222222;"><tr><td><div  style="width:100% ;    border-radius: 8px 8px 0 0;    box-shadow: 0px 0px 24px #0000007d; max-width:600px ; text-align:center ; margin-top:0 ; margin-right: auto ; margin-bottom:0 ; margin-left: auto ;"><table  width="600" align="center" cellpadding="0" cellspacing="0" border="0" style="text-align:center; margin-top:0 ; margin-right: auto ; margin-bottom:0 ; margin-left: auto ; border:none; width: 100% ; max-width:600px ;"><tr><td style="background: #fff; border-radius: 8px 8px 0 0;"><img src="'.$img_src.'" alt="varuna-logo" style=" border-radius: 8px 8px 0 0; padding: 15px 0px;"></td></tr><tr><td width="100%"><table  border="0" cellspacing="0" cellpadding="0" width="100%"><tr><td style="background: #1a2c5e; "><h1 style=" margin: 0;line-height: 29px;font-size: 22px;padding: 14px 0px; text-align: center; color: #fff">We have received <br> your enquiry </h1></td></tr></table>
            <table bgcolor="#FFFFFF" border="0" cellspacing="0" cellpadding="25" width="100%"><tr><td width="100%" bgcolor="#ffffff" style="text-align:left;margin: 0; padding: 15px 25px 0;"><p style="color:#000;  font-size:15px; line-height:19px; margin-top:10px; margin-bottom:20px; padding:0; font-weight:normal;">Hello, '.$name.'</p><p style="color:#000; font-size:14px; line-height:19px; margin:0; padding:0; font-weight:normal;">We have received your enquiry. Thanks for considering our services. One of our specialists shall be in touch with you shortly.</p></td></tr></table>
            <table bgcolor="#FFFFFF" border="0" cellspacing="0" cellpadding="25" width="100%"><tr><td><p style="margin: 0; padding: 0 ; font-size: 18px; text-align:center; color: #000"> Thanks and Regards</p><p style="color: #1a2c5e; margin: 0; padding: 0 ; font-size: 18px; text-align: center;"> Varuna Group</p></td></tr><tr><td style="background: #1a2c5e;    padding: 4px 0px;  border-radius: 0 0 8px 8px;"><p style=" margin: 0; padding: 0 ; font-size: 18px; text-align: center;"><span style="    font-size: 14px; vertical-align: top; display: inline-block; padding: 20px 0;text-align: right;    color: #fff;">'.date('Y').' © Copyright - All Rights Reserved. <br><a href="#" style="color: #fff; text-decoration: none"> Varuna Group </a></span></p></td></tr></table></td></tr></table></div></td></tr></table></body>';
         $headers = "MIME-Version: 1.0" . "\r\n";
         $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
         $headers .= 'From: Varuna Group <info@varuna.net>' . "\r\n";
         $admin_headers = "MIME-Version: 1.0" . "\r\n";
         $admin_headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
         $admin_headers .= 'From: Varuna Group <info@varuna.net>' . "\r\n";
         $adminsucess      = mail($to,$admin_mail_subject,$admin_mail_txt, $admin_headers,"-finfo@varuna.net");
         $customersuccess  = mail($email,$customer_mail_subject,$customer_mail_txt, $headers,"-finfo@varuna.net");
         $success = false;
         if($adminsucess){
            $success = true;
            $_POST['name'] = $_POST['email'] = $_POST['phone_number'] = $_POST['industry'] = $_POST['organization_name'] = $_POST['location'] = $_POST['space_required'] = '' ;
         }else
         {
            $errorMsg = 'Something went wrong, Please try again.';
         }
      }
   }
}
?>
<!DOCTYPE html>
<html lang="en">
   <head>
        <title>Varuna Group</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="icon" href="https://varuna.net/warehousing/images/favico.png" type="image/png"> 
        <!-- Google Tag Manager -->
        <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-MFVRDFJ');</script>
        <!-- End Google Tag Manager -->
        <link rel="stylesheet" type="text/css" href="https://varuna.net/warehousing/css/slick-theme.css">
        <link rel="stylesheet" type="text/css" href="https://varuna.net/warehousing/css/slick.css">
        <link rel="stylesheet" type="text/css" href="https://varuna.net/warehousing/css/animate.css" />
        <link rel="stylesheet" type="text/css" href="https://varuna.net/warehousing/css/landing.css" />
        <link rel="stylesheet" type="text/css" href="https://varuna.net/warehousing/css/parsley.css" />
   </head>
   <body>
      <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MFVRDFJ"
        height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->
      <!-- Header Part  Start -->

      <header class="header">
         <div class="container">
            <div class="logo">
               <a href="#">
                  <img src="https://varuna.net/warehousing/images/logo.png" alt="logo">
               </a>
            </div>
            <div class="cont-information">
               <ul>
                  <!-- <li><a href="#"><img src="images/profile-pic.png" alt="profile-pic">Ms.Anju Singh</a></li> -->
                  <!-- <li><a href="#"><img src="images/mobile-icon.png" alt="mobile-icon">0124-2373214</a></li> -->
                  <li><a href="mailto:marketing@varuna.net?subject=Warehousing%20Query"><img src="https://varuna.net/warehousing/images/mail-icon.png" alt="mail-icon">marketing@varuna.net</a></li>
                  <!-- <li class="liwwwnkedin"><a href="#">
                        <span>
                           
                           <img src="images/wtsapp-icon.png" alt="wtsaap">
                        </span>
                     </a></li> -->
                  <li class="facebook"><a href="https://www.linkedin.com/company/vilpl/" target="_blank">
                        <span>
                          <img src="https://varuna.net/warehousing/images/linkedin-icon.png" alt="linkedin">
                           
                        </span>
                     </a>
                  </li>
                  <li class="wtsapp"><a href="https://www.facebook.com/Varuna-Group-106320337691828/" target="_blank">
                        <span>
                           <img src="https://varuna.net/warehousing/images/facebook-icon.png" alt="facebook">
                        </span>
                     </a>
                  </li>
               </ul>
            </div>
         </div>
      </header>
      <div class="main">
         <section class="banner">
            <div class="banner-slider">
               <div class="slide-box">
                  <figure>
                     <img src="https://varuna.net/warehousing/images/banner-3.jpg" alt="banner">
                     <figcaption>
                        <div class="container">
                           <h1>Experience <br> Collaboration</h1>
                           <p>A workforce of 1500+ spread across 80+ locations striving for operational excellence with a mission to reduce the effective landed cost of products</p>
                        </div>
                     </figcaption>
                  </figure>
               </div>
               
               <div class="slide-box agile">
                  <figure>
                      <img class="desktop" src="https://varuna.net/warehousing/images/banner-2.jpg" alt="banner">
                     <img class="mobile-banner" src="https://varuna.net/warehousing/images/banner-2-mobile.jpg" alt="banner">
                     <figcaption>
                        <div class="container">
                           <h1>Experience <br> Agility</h1>
                           <p>Customised WMS, TMS and real time tracking to ensure 100% order fullfilment and excellent turn around time</p>
                        </div>
                     </figcaption>
                  </figure>
               </div>

               <div class="slide-box">
                  <figure>
                     <img src="https://varuna.net/warehousing/images/banner.jpg" alt="banner">
                     <figcaption>
                        <div class="container">
                           <h1>Experience <br> Excellence</h1>
                           <p>Network of 25+ warehouses covering 1.2 mn sq. ft + of area to enable pan India distribution of inventories</p>
                        </div>
                     </figcaption>
                  </figure>
               </div>
              
            </div>
         </section>
         <section class="services">
            <div class="container">
               <ul>
                  
                  <li>
                     <figure>
                        <img src="https://varuna.net/warehousing/images/warehouse-managemnt.png" alt="warehouse-managemnt">
                        
                     </figure>
                     <h2>Warehouse <br> Management</h2>
                        <ul>
                           
                           <li>Fullfillment centre</li>
                           <li>Consolidation warehouse</li>
                           <li>In-plant warehouse</li>
                           <li>Distribution warehouse</li>
                           <li>JIT services</li>
                           <li>Cross border warehousing</li>
                        </ul>
                  </li>
                  <li>
                     <figure>
                        <img src="https://varuna.net/warehousing/images/value-added.png" alt="value-added">
                        
                     </figure>
                     <h2>Value-Added <br> Services</h2>
                        <ul>
                           <li>Embellishment</li>
                           <li>Labeling</li>
                           <li>Kitting/de-kitting</li>
                           
                           <li>Refurbishing</li>
                           <li>Quality checks</li>
                        </ul>
                  </li>
                  <li>
                     <figure>
                        <img src="https://varuna.net/warehousing/images/transport.png" alt="transport">
                        
                     </figure>
                     <h2>Transportation</h2>
                        <ul>
                          
                           <li>100% in transit visibility with Control tower</li>
                          
                           
                           <li>Fleet of 1800+ vehicles</li>
                           <li>95% placement efficiency</li>
                           <li>50% TAT saving</li>
                           <li>0.01% Damage and Pilferage</li>
                           <li>Primary and Secondary Transportation</li>
                        </ul>

                  </li>
               </ul>
            </div>
         </section>
         <section class="our-footprints">
            <div class="container">
               <div class="footprint-left">
                  <h2>Our Footprint</h2>
                  <p>With a pan India network of warehouses, hubs and branches all connected through technology and experience, we are equipped to offer best logistics and warehousing services across the country.</p>
                  <ul>
                     <li><span>60</span> + Branches</li>
                     <li><span>1.2 mn</span> + sq. feet Cumulative Capacity</li>
                     <li><span>25</span> + Warehouses</li>
                     <li>Pan India Presence</li>
                     <li>Industries served - Pharmaceuticals, FMCG, Auto & Tyre, Food & Beverages, Electrical, FMCD and Others.</li>
                     <li><span>1500+</span> Employees</li>
                  </ul> 
               </div>
               <div class="footprint-right">
                  <figure>
                     <img src="https://varuna.net/warehousing/images/india-map.png" alt="map">
                  </figure>
               </div>
            </div>
         </section>
         <section class="area-spectification">
            <div class="container">
               <div class="area-left">
                  <h2>4.3 Lakh Sq. Ft <br> Multi-User Facility </h2>
                  <ul>
                     <li>Pay as you use</li>
                     <li>Capacity for seasonal peaks </li>
                     <li>State-of-the-art warehousing Infrastructure</li>
                     <li>Located on NH-44, 10 km off Ambala</li>
                     <li>Single block of 4.3 lakh sq.ft</li>
                     <li>Clear  height of 10.5 m</li>
                     <li>Central height of 15 m </li>
                     <li>Fully compliant (CLU) facility</li>
                     <li> Completely Dust free and Environment Friendly</li>
                     

                  </ul>
               </div>
               <div class="area-right">
                  <figure>
                     <img src="https://varuna.net/warehousing/images/area-img.png" alt="area-img">
                      <figcaption>
                        <h3>Multi User Facility,<br> Shambhu, Near Ambala, Punjab</h3>
                     </figcaption>
                  </figure>
               </div>
            </div>
         </section>
         <section class="about-varuna">
            <div class="container">
               <h2>About Varuna Group</h2>
               <p>A leading provider of logistics, warehousing, and integrated services, Varuna Group is on a mission to reduce the effective landed costs of products while enabling enhanced and accelerated growth to its customers. Established in 1996, the company is known for its predictable, transparent and efficient services across diverse industry verticals including FMCG, FMCD, pharmaceuticals, auto & tyre, electrical and others.</p>
               <a href="https://varuna.net/" target="_blank">Explore More</a>
            </div>
         </section>
          <section class="warehousing-services">
           <div class="container">
               <h3>Warehousing Services Available In</h3>
               <p>Mumbai | Navi Mumbai | Thane | Delhi | Noida | Greater Noida | Bangalore | Hyderabad | Gurgaon | Raipur</p>
            </div>
         </section>
         <footer>
            <div class="container">
               <div class="information">
                  <ul>
                     <li>
                        <span><img src="https://varuna.net/warehousing/images/footer-email.png" alt="footer-email"></span>
                        <label>EMAIL</label>
                        <a href="mailto:marketing@varuna.net?subject=Warehousing%20Query">marketing@varuna.net</a>
                     </li>
                     <li>
                        <span><img src="https://varuna.net/warehousing/images/footer-mobile.png" alt="footer-mobile"></span>
                        <label>CALL US</label>
                        0124-2373214
                     </li>
                     <li>
                        <span><img src="https://varuna.net/warehousing/images/footer-location.png" alt="footer-location"></span>
                        <label>CORPORATE HEADQUARTERS</label>
                        <small>Plot No. 572, Sector-37,<br>Pace City-2, Gurugram, HR</small>
                     </li>
                  </ul>
               </div>
               <p>&copy; 2020 ALL RIGHTS RESERVED </p>
            </div>
         </footer>
      </div>
      <div class="sidenav">
         <h2><span>Get In Touch <img src="https://varuna.net/warehousing/images/global-white.svg" alt="global-white"></span></h2>
         <?php echo !empty($errorMsg)?'<span class="error-global">'.$errorMsg.'</span>':'';?>
         <form id="contact-form" action="" method="post" data-parsley-validate>
            <div class="form-group">
               <input type="text" name="name" placeholder="Name*" data-parsley-trigger="blur" data-parsley-required="true" data-parsley-required-message="This is required field" data-parsley-maxlength="100" data-parsley-maxlength-message="Name cannot be greater than 100 characters" data-parsley-minlength="3" data-parsley-minlength-message="Name cannot be less than 3 characters" value="<?php echo !empty($_POST['name'])?$_POST['name']:'';?>">
               <?php echo !empty($errorMsgBag['name'])?'<span class="error">'.$errorMsgBag['name'].'</span>':'';?>
            </div>
            <div class="form-group">
               <input type="text" name="email" placeholder="Email*" data-parsley-trigger="blur" data-parsley-required="true" data-parsley-required-message="This is required field" data-parsley-type="email" data-parsley-type-message="Please provide a valid email" data-parsley-maxlength="100" data-parsley-maxlength-message="Email cannot be greater than 100 characters" data-parsley-minlength="6" data-parsley-minlength-message="Email cannot be less than 6 characters" value="<?php echo !empty($_POST['email'])?$_POST['email']:'';?>">
               <?php echo !empty($errorMsgBag['email'])?'<span class="error" style="color: red">'.$errorMsgBag['email'].'</span>':'';?>
            </div>
            <div class="form-group">
               <input type="text" name="phone_number" placeholder="Phone Number*" data-parsley-trigger="blur" data-parsley-required="true" data-parsley-required-message="This is required field" data-parsley-type-message="Please provide a valid mobile number" data-parsley-maxlength="15" data-parsley-maxlength-message="Mobile number cannot be greater than 15 digits" data-parsley-minlength="6" data-parsley-minlength-message="Mobile number cannot be less than 6 digits" value="<?php echo !empty($_POST['phone_number'])?$_POST['phone_number']:'';?>">
               <?php echo !empty($errorMsgBag['phone_number'])?'<span class="error" style="color: red">'.$errorMsgBag['phone_number'].'</span>':'';?>
            </div>
            <div class="form-group">
               <input type="text" name="organization_name" placeholder="Organization name*" data-parsley-trigger="blur" data-parsley-required="true" data-parsley-required-message="This is required field" data-parsley-maxlength="200" data-parsley-maxlength-message="Organization name cannot be greater than 200 characters" data-parsley-minlength="4" data-parsley-minlength-message="Organization name cannot be less than 4 characters" value="<?php echo !empty($_POST['organization_name'])?$_POST['organization_name']:'';?>">
               <?php echo !empty($errorMsgBag['organization_name'])?'<span class="error" style="color: red">'.$errorMsgBag['organization_name'].'</span>':'';?>
            </div>
            <div class="form-group">
               <select name="industry" data-parsley-trigger="change" data-parsley-maxlength="1" data-parsley-maxlength-message="Please choose a valid option" data-parsley-type="digits" data-parsley-type-message="Please choose a valid option">
                  <option value="">Select Industry</option>
                  <option value="1" <?php echo (!empty($_POST['industry']) && $_POST['industry']=='1')?'selected':'';?>>Pharmaceuticals</option> 
                  <option value="2" <?php echo (!empty($_POST['industry']) && $_POST['industry']=='2')?'selected':'';?>>FMCG</option> 
                  <option value="3" <?php echo (!empty($_POST['industry']) && $_POST['industry']=='3')?'selected':'';?>>Auto & Tyre</option>
                  <option value="4" <?php echo (!empty($_POST['industry']) && $_POST['industry']=='4')?'selected':'';?>>Food & Beverages</option>
                  <option value="5" <?php echo (!empty($_POST['industry']) && $_POST['industry']=='5')?'selected':'';?>>Electrical</option>
                  <option value="6" <?php echo (!empty($_POST['industry']) && $_POST['industry']=='6')?'selected':'';?>>FMCD</option>
                  <option value="7" <?php echo (!empty($_POST['industry']) && $_POST['industry']=='7')?'selected':'';?>>Retail</option>
                  <option value="8" <?php echo (!empty($_POST['industry']) && $_POST['industry']=='8')?'selected':'';?>>Chemical</option>
                  <option value="9" <?php echo (!empty($_POST['industry']) && $_POST['industry']=='9')?'selected':'';?>>Others</option>
               </select>
               <?php echo !empty($errorMsgBag['industry'])?'<span class="error" style="color: red">'.$errorMsgBag['industry'].'</span>':'';?>
            </div>
            <div class="form-group">
               <input type="text" name="location" placeholder="Location*" data-parsley-trigger="blur" data-parsley-required="true" data-parsley-required-message="This is required field" data-parsley-maxlength="100" data-parsley-maxlength-message="Location name cannot be greater than 100 characters" data-parsley-minlength="2" data-parsley-minlength-message="Location name cannot be less than 2 characters" value="<?php echo !empty($_POST['location'])?$_POST['location']:'';?>">
               <?php echo !empty($errorMsgBag['location'])?'<span class="error" style="color: red">'.$errorMsgBag['location'].'</span>':'';?>
            </div>
            <div class="form-group">
               <input type="text" name="space_required" placeholder="Space Required  (in sq. ft.)" data-parsley-trigger="blur" data-parsley-maxlength="6" data-parsley-maxlength-message="Required Space cannot be greater than 999999 sq. ft." data-parsley-type="digits" data-parsley-type-message="Please provide valid required space" value="<?php echo !empty($_POST['space_required'])?$_POST['space_required']:'';?>">
               <?php echo !empty($errorMsgBag['space_required'])?'<span class="error" style="color: red">'.$errorMsgBag['space_required'].'</span>':'';?>
            </div>
            
            
            <div class="form-group">
               <input type="submit" name="submit" class="enquiry-submit" value="submit">
            </div>
         </form>
      </div>
      <div class="thank-you-msg">
        <div class="container">
          <h1>Thank You!</h1>
          <h2>Thanks for showing interest in our warehousing services. Our representative will get in touch with you shortly.</h2>
        </div>
      </div>
     
      
      <!-- Banner Part  Start -->
     
      <!-- Banner Part  End -->
     
      
      <!-- partial -->
      <script src='https://varuna.net/warehousing/js/jquery.min.js'></script>
      <script src='https://varuna.net/warehousing/js/wow.min.js'></script>
      <script src='https://varuna.net/warehousing/js/slick.js'></script>
      <script src='https://varuna.net/warehousing/js/parsley.min.js'></script>
      <script type="text/javascript">
         $('.banner-slider').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    autoplay: true,
    dots: true,
    autoplaySpeed: 5000,
    infinite:false
    });

          $('.sidenav h2').click(function(){
         $('.sidenav').toggleClass('active');
         });
      
             
             $(".sidenav h2").click(function() {
         $(this).toggleClass("highlight");
         });
      </script>
      <?php if(!empty($success) && $success){?>
         <script type="text/javascript">
            $('.thank-you-msg').addClass('active');
            setTimeout(function(){
                $('.thank-you-msg').removeClass('active');
            },5000);
      </script>
      <?php } ?>
   </body>
</html>
