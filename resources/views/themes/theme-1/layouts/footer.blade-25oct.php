<?php
$websiteSettingsNamesArr = ['SITE_COPYRIGHT_TEXT', 'SITE_FOOTER_EMAIL_1','SITE_FOOTER_EMAIL_2','SITE_FOOTER_PHONE_1','SITE_FOOTER_PHONE_2'];

$websiteSettingsArr = CustomHelper::websiteSettingsArray($websiteSettingsNamesArr);

$SITE_COPYRIGHT_TEXT = (isset($websiteSettingsArr['SITE_COPYRIGHT_TEXT']))?$websiteSettingsArr['SITE_COPYRIGHT_TEXT']->value:'';
$SITE_FOOTER_EMAIL_1 = (isset($websiteSettingsArr['SITE_FOOTER_EMAIL_1']))?$websiteSettingsArr['SITE_FOOTER_EMAIL_1']->value:'';
$SITE_FOOTER_EMAIL_2 = (isset($websiteSettingsArr['SITE_FOOTER_EMAIL_2']))?$websiteSettingsArr['SITE_FOOTER_EMAIL_2']->value:'';
$SITE_FOOTER_PHONE_1 = (isset($websiteSettingsArr['SITE_FOOTER_PHONE_1']))?$websiteSettingsArr['SITE_FOOTER_PHONE_1']->value:'';
$SITE_FOOTER_PHONE_2 = (isset($websiteSettingsArr['SITE_FOOTER_PHONE_2']))?$websiteSettingsArr['SITE_FOOTER_PHONE_2']->value:'';
?>


<footer>
        <div class="container-fluid fopaddingleftRight">
          <div class="footerLinkWrp wow fadeInDown">
            <div class="row">
              <div class="col-12 col-lg-12">
                <div class="row">
                  <div class="col-12 col-lg-2 col-md-4">
                    <div class="quickLinks">

                     <a href="{{url('services')}}"> <h4>Services</h4></a>
                        <ul>
                          <li><a href="{{url('service-logistics')}}">Varuna Logistics</a></li>
                          <li><a href="{{url('service-warehousing')}}">Varuna Warehousing</a></li>
                          <!--li><a href="{{url('service-integrate')}}">Integrated Services</a></li-->
                        </ul>
                    </div>
                  </div>
                  <div class="col-6 col-lg-3 col-md-4">
                    <div class="quickLinks secoLinks">
                      <a href="{{url('industry-solution')}}"><h4>Industry Solutions</h4></a>
                        <ul>
                          <li><a href="{{url('industry-healthcare')}}">Pharma and Healthcare</a></li>
                          <li><a href="{{url('industry-fmcg')}}">FMCG</a></li>
                          <li><a href="{{url('industry-automotive')}}">Auto & Tyre</a></li>
                          <li><a href="{{url('food-beverage')}}">Food & Beverage</a></li>
                          <li><a href="{{url('industry-omnichannel')}}">Omnichannel retail</a></li>
                          <li><a href="{{url('industry-electrical')}}">Electrical</a></li>
                        </ul>
                    </div>
                  </div>
                  <div class="col-6 col-lg-3 col-md-4">
                    <div class="quickLinks thirdLinks">
                     <a href="{{url('capabilities')}}"><h4>Capabilities</h4></a>
                        <ul>
                          <li><a href="{{url('capability-people')}}">People</a></li>
                          <li><a href="{{url('capability-fleet')}}">Fleet</a></li>
                          <!--li><a href="">About Us</a></li-->
                          <li><a href="{{url('multi-user-facilities')}}">Multi User Facilities</a></li>
                          <li><a href="{{url('capability-network')}}">Network</a></li>
                          <li><a href="{{url('capability-technology')}}">Technology</a></li>
                          <li><a href="{{url('capability-quality')}}">Quality</a></li>
                        </ul>
                    </div>
                  </div>
                  <div class="col-6 col-lg-2 col-md-4">
                    <div class="quickLinks">
                     <a href="{{url('varuna-career')}}"> <h4>Careers</h4></a>
                        <ul>
                          <li><a href="{{url('career-life-at-varuna')}}">Life at Varuna</a></li>
                          <li><a href="{{url('employee-stories')}}">Employee Stories</a></li>
                          <li><a href="{{url('learning-growth')}}">Learning & Growth</a></li>
                          <li><a href="{{url('careers')}}">Open Positions</a></li>
                        </ul>
                    </div><!-- quickLinks -->
                  </div>
                   <div class="col-6 col-lg-2 col-md-4">
                    <div class="quickLinks">
                      <h4>About Us</h4>
                      <ul>
                        <li><a href="{{url('corporate')}}">Overview</a></li>
                        <li><a href="{{url('journey')}}">Our Journey</a></li>
                      </ul>
                  </div><!-- quickLinks -->
                </div>
              </div>
            </div>
          </div>
      </div>
         <div class="secondFooter">
            <div class="row">
                <div class="col-12 col-lg-4">
                  <img src="{{asset('public/assets/themes/theme-1/images/logoNew.png')}}" alt="" class="footerLogo"/>
                </div>
                <div class="col-12 col-lg-5">
                  <div class="talkWithUs">
                    <p>Talk with us</p>
                    <a href="mailto:{{$SITE_FOOTER_EMAIL_1}}">{{$SITE_FOOTER_EMAIL_1}}</a>  <!--span class="staightIcon">|<span/><a href="tel:{{$SITE_FOOTER_PHONE_1}}">{{$SITE_FOOTER_PHONE_1}}</a><span class="displayNewLine"></span--><br />
                    <a href="mailto:{{$SITE_FOOTER_EMAIL_2}}">{{$SITE_FOOTER_EMAIL_2}}</a> <!--span class="staightIcon">| </span><a href="tel:{{$SITE_FOOTER_PHONE_2}}">{{$SITE_FOOTER_PHONE_2}}</a-->
                  </div><!-- talkWithUs -->
                </div>
                <div class="col-12 col-lg-3 rightLinks expLeftImg">
                  <div class="footerRightLogo">
                   <img src="{{asset('public/assets/themes/theme-1/images/footerRightImg.png')}}" alt="" class="footerLogo"/> </div>
                  <ul class="footerSocialLinks">
                    <li><a href=""><i class="fab fa-linkedin  round"></i></a></li>
                    <li><a href=""><i class="fab fa-twitter round"></i></a></li>
                    <li><a href=""><i class="fab fa-youtube round"></i></a></li>
                  </ul>
                </div>
              </div>
         </div><!--secondFooter-->
        </div><!-- container -->
        <div class="copyrightSec wow fadeInDown">
          <div class="container-fluid fopaddingleftRight">
              <div class="row">
                <div class="col-12 col-lg-6">
                  <p>&copy; <?php echo $SITE_COPYRIGHT_TEXT; ?></p>
                </div>
                <div class="col-12 col-lg-6 rightLinks">
                  <ul class="inlineLinks">
                    <li><a href="">Privacy Policy </a></li>
                    <li><a href="">Terms of Use</a></li>
                  </ul>
                </div>
              </div>
          </div><!-- container -->
        </div><!-- copyrightSec -->
    </footer>