<?php
$websiteSettingsNamesArr = ['SITE_COPYRIGHT_TEXT', 'SITE_FOOTER_EMAIL_1','SITE_FOOTER_EMAIL_2','SITE_FOOTER_PHONE_1','SITE_FOOTER_PHONE_2','FACEBOOK','TWITTER','LINKEDIN','YOUTUBE'];

$websiteSettingsArr = CustomHelper::websiteSettingsArray($websiteSettingsNamesArr);

$SITE_COPYRIGHT_TEXT = (isset($websiteSettingsArr['SITE_COPYRIGHT_TEXT']))?$websiteSettingsArr['SITE_COPYRIGHT_TEXT']->value:'';
$SITE_FOOTER_EMAIL_1 = (isset($websiteSettingsArr['SITE_FOOTER_EMAIL_1']))?$websiteSettingsArr['SITE_FOOTER_EMAIL_1']->value:'';
$SITE_FOOTER_EMAIL_2 = (isset($websiteSettingsArr['SITE_FOOTER_EMAIL_2']))?$websiteSettingsArr['SITE_FOOTER_EMAIL_2']->value:'';
$SITE_FOOTER_PHONE_1 = (isset($websiteSettingsArr['SITE_FOOTER_PHONE_1']))?$websiteSettingsArr['SITE_FOOTER_PHONE_1']->value:'';
$SITE_FOOTER_PHONE_2 = (isset($websiteSettingsArr['SITE_FOOTER_PHONE_2']))?$websiteSettingsArr['SITE_FOOTER_PHONE_2']->value:'';
$FACEBOOK = (isset($websiteSettingsArr['FACEBOOK']))?$websiteSettingsArr['FACEBOOK']->value:'';
$TWITTER = (isset($websiteSettingsArr['TWITTER']))?$websiteSettingsArr['TWITTER']->value:'';
$LINKEDIN = (isset($websiteSettingsArr['LINKEDIN']))?$websiteSettingsArr['LINKEDIN']->value:'';
$YOUTUBE = (isset($websiteSettingsArr['YOUTUBE']))?$websiteSettingsArr['YOUTUBE']->value:'';
?>


<footer>
        <div class="container-fluid fopaddingleftRight">
          <div class="footerLinkWrp wow fadeInDown">
            <div class="row">
              <div class="col-12 col-lg-12">
                <div class="row">
                  <div class="col-12 col-lg-3 col-md-4">
                    <div class="quickLinks">

                     <a href="{{url('services')}}"> <div class="footer_head">Services</div></a>
                        <ul>
                          <li><a href="{{url('logistics-management-services')}}">Varuna Logistics</a></li>
                          <li><a href="{{url('warehousing-management-services')}}">Varuna Warehousing</a></li>
                          <!--li><a href="{{url('service-integrate')}}">Integrated Services</a></li-->
                        </ul>
                    </div>
                  </div>
                  <div class="col-6 col-lg-3 col-md-4" style="display: none;">
                    <div class="quickLinks secoLinks">
                      <a href="{{url('industry-solution')}}"><div class="footer_head">Industry Solutions</div></a>
                        <ul>
                          <li><a href="{{url('industry-healthcare')}}">Pharma and Healthcare</a></li>
                          <li><a href="{{url('industry-fmcg')}}">FMCG</a></li>
                          <li><a href="{{url('industry-automotive')}}">Auto Components & Tyres</a></li>
                          <li><a href="{{url('food-beverage')}}">Food & Beverage</a></li>
                          <li><a href="{{url('industry-omnichannel')}}">Omnichannel retail</a></li>
                          <li><a href="{{url('industry-electrical')}}">Electrical</a></li>
                        </ul>
                    </div>
                  </div>
                  <div class="col-6 col-lg-3 col-md-4">
                    <div class="quickLinks thirdLinks">
                     <a href="{{url('capabilities')}}"><div class="footer_head">Capabilities</div></a>
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
                  <div class="col-6 col-lg-3 col-md-4">
                    <div class="quickLinks">
                     <a href="{{url('varuna-career')}}"> <div class="footer_head">Careers</div></a>
                        <ul>
                          <li><a href="{{url('career-life-at-varuna')}}">Life at Varuna</a></li>
                          <li><a href="{{url('employee-stories')}}">Employee Stories</a></li>
                          <li><a href="{{url('learning-development')}}">Learning & Development</a></li>
                          <li><a href="{{url('careers')}}">Open Positions</a></li>
                        </ul>
                    </div><!-- quickLinks -->
                  </div>
                   <div class="col-6 col-lg-3 col-md-4">
                    <div class="quickLinks">
                      <div class="footer_head">About Us</div>
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
                <div class="col-12 col-lg-6">
                  <img src="{{asset('assets/themes/theme-1/images/logoNew.png')}}" alt="Varuna Group: Supply Chain Management Solution" class="footerLogo"/>
                </div>
                <div class="col-12 col-lg-3">
                  <div class="talkWithUs">
                    <p>Contact Us</p>
                    <a href="mailto:{{$SITE_FOOTER_EMAIL_1}}">{{$SITE_FOOTER_EMAIL_1}}</a>  <!--span class="staightIcon">|<span/><a href="tel:{{$SITE_FOOTER_PHONE_1}}">{{$SITE_FOOTER_PHONE_1}}</a><span class="displayNewLine"></span--><br />
                    <a href="mailto:{{$SITE_FOOTER_EMAIL_2}}">{{$SITE_FOOTER_EMAIL_2}}</a> <!--span class="staightIcon">| </span><a href="tel:{{$SITE_FOOTER_PHONE_2}}">{{$SITE_FOOTER_PHONE_2}}</a-->
                  </div><!-- talkWithUs -->
                </div>
                
                <div class="col-12 col-lg-3 rightLinks expLeftImg">
                  <div class="footerRightLogo">
                   <img src="{{asset('assets/themes/theme-1/images/footerRightImg.png')}}" alt="Varuna Group" alt="" class="footerLogo"/> </div>
                  <ul class="footerSocialLinks">
                    <?php
                    if(!empty($FACEBOOK)){
                    ?>
                    <li><a href="{{$FACEBOOK}}">
                       <i class="round">
                         <img src="{{asset('assets/themes/theme-1/images/faceboo-icon.png')}}" alt="facebook" />
                       </i>
                      <!-- <i class="fab fa-facebook  round"></i> -->
                    </a></li>
                  <?php } ?>

                    <?php
                    if(!empty($LINKEDIN)){
                    ?>
                    <li><a href="{{$LINKEDIN}}">
                      <i class="round"> <img src="{{asset('assets/themes/theme-1/images/linkedin-icon.png')}}"  alt="linkedin" /></i>
                      <!--  <i class="fab fa-linkedin  round"></i> -->
                    </a></li>
                  <?php }
                  
                  if(!empty($TWITTER)){
                  ?>
                    <li><a href="{{$TWITTER}}">
                      <i class="round"><img src="{{asset('assets/themes/theme-1/images/twitter-icon.png')}}" alt="Twitter" /></i>
                     <!--  <i class="fab fa-twitter round"></i> -->
                    </a></li>
                    <?php
                  }

                  if(!empty($YOUTUBE)){
                    ?>
                    <li><a href="{{$YOUTUBE}}">
                        <i class="round"><img src="{{asset('assets/themes/theme-1/images/youtube-icon.png')}}" alt="Youtube" /></i>
                    <!--   <i class="fab fa-youtube round"></i> -->

                    </a></li>
                  <?php } ?>
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
                    <li><a href="{{url('privacy-policy')}}">Privacy Policy </a></li>
                    <li><a href="{{url('term-of-use')}}">Terms of Use</a></li>
                  </ul>
                </div>
              </div>
          </div><!-- container -->
        </div><!-- copyrightSec -->
    </footer>