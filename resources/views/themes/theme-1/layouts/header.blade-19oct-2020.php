<?php
$capabilities = CustomHelper::getCmsData($id=0, $parent_id=13, $limit='', $params=[]);
$industry_solution = CustomHelper::getCmsData($id=0, $parent_id=11, $limit='', $params=[]);

//pr($capabilities->toArray());
?>

<header class="wow fadeInDown headerSec">
      <div class="navigationWrp paddingleftRight">
        <div class="container-fluid">
          <nav class="navbar navbar-expand-lg">
           <a class="customNavbar-toggler menu-icons open">Menu
              <i class="fas fa-bars iconI"></i>
            </a>
             <a class="navbar-brand" href="/"><img class="img-fluid logo" src="{{asset('public/assets/themes/theme-1/images/logoNew.png')}}" alt="logo"></a>
              <ul class="navNoneMobile">
                <li><a href="{{url('insights')}}">Insights</a></li>
                <!--li><a href="{{url('/')}}">Media</a></li-->
               <!--  <li><a href="{{url('contact-us')}}">Contact</a></li> -->
                <li><a href="{{url('contact-us')}}">Contact Us</a></li>
              </ul>
          </nav>
        </div>
      </div>
    </header>

<!-- MObile -->
    <div class="mainHeder container-fluid show__on__mobile">
      <nav class="navbar navbar-expand-lg navbar-light fullWidth">
        <div class="collapse navbar-collapse secondHed" id="navbarSupportedContent">
          <div class="mobile__Croll">
          <ul class="navbar-nav mr-auto customNav">
            <div class="nav-icons close">
              <i class="far fa-window-close"></i>
            </div>
              <li class="dropdown dropdownCust">
               <a class="dropdown-toggle dropdown-toggle-custom" href="{{url('services')}}" id="navbarDropdown"  data-toggle="dropdown">
                Services
              </a>
              <ul class="dropdown-menu dropdown-menu-cust three__box__menu" aria-labelledby="navbarDropdown">
                 <li>
                    <a class="dropdown-item" href="#">
                      <h4 class="menuHeading menuPadding">A robust portfolio
                          for your supply
                         <span class="bannerNewLine"></span>
                          chain needs
                       </h4>
                     </a>
                  </li>
                  <li>
                   <a href="{{url('service-logistics')}}" class="whremrl20">
                     <!--img src="{{asset('/public/assets/themes/theme-1/images/subHeaderLogo.png')}}" class="img-fluid topMenuLogo" /-->
                       <p class="topMenuText">
                         Primary transport management <br /> involving long haul trucking
                       </p>
                    </a>
                  </li>
                  <li>
                    <a href="{{url('service-warehousing')}}">
                      <!--img src="{{asset('/public/assets/themes/theme-1/images/subHeaderLogo2.png')}}" class="img-fluid topMenuLogo" /-->
                        <p class="topMenuText">
                          Warehousing operations &  secondary transport management
                        </p>
                      </a>
                   </li>
                  <!--li>
                    <a href="{{url('service-integrate')}}"  class="whremrr74">
                      <img src="{{asset('/public/assets/themes/theme-1/images/subHeaderLogo3.png')}}" class="img-fluid topMenuLogo" />
                        <p class="topMenuText">
                         Offering seamlessly integrated logistics <br /> operations via multiple capabilities
                        </p>
                      </a>
                  </li-->
               </ul>
            </li>
            <!-- <li>
              <a href="#"></a>
            </li> -->
            <?php /*
            <li class="dropdown dropdownCust">
                <a class="dropdown-toggle dropdown-toggle-custom" href="{{url('industry-solution')}}" id="navbarDropdown1" data-toggle="dropdown">
                Industry Solutions
                </a>
              <?php
              if(!empty($industry_solution) && count($industry_solution) > 0){
              ?>
              <ul class="dropdown-menu dropdown-menu-cust centerMenu" aria-labelledby="navbarDropdown1">

                <?php
                foreach ($industry_solution as $solution){
                ?>
                <li><a class="dropdown-item" href="<?php echo url($solution->slug); ?>">{{$solution->title}}</a><li>
                <?php } ?>
                <!-- <li><a class="dropdown-item" href="{{url('journey')}}">Our Journey</a><li>
                <li><a class="dropdown-item" href="#">Leadership Team</a><li> -->
              </ul>
            <?php } ?>
            </li> */ ?>

            <li class="dropdown dropdownCust dropdown__box">
               <a class="dropdown-toggle dropdown-toggle-custom" href="{{url('industry-solution')}}" id="navbarDropdown"  data-toggle="dropdown">
                Industry Solutions
              </a>
              <ul class="dropdown-menu dropdown-menu-cust dropdown__menu__box" aria-labelledby="navbarDropdown">
                 <li>
                    <a class="dropdown-item" href="#">
                      <h4 class="menuHeading menuPadding">
                        Offering Solutions
                        Tailored to the <span class="bannerNewLine"></span>
                        need of your bussiness
                       </h4>
                     </a>
                  </li>
                  <li>
                    <a href="{{url('industry-healthcare')}}">
                      <div class="M__menu__box__yelllow">
                      <img src="{{asset('/public/assets/themes/theme-1/images/M-Pharmacy.png')}}" class="img-fluid" />
                      </div>
                      <div class="menuBoxText">
                        Pharma & Healthcare
                      </div>
                    </a>
                 </li>
                  <li>
                    <a href="{{url('industry-omnichannel')}}">
                       <div class="M__menu__box__blue">
                      <img src="{{asset('/public/assets/themes/theme-1/images/M-Omnichannel.png')}}" class="img-fluid">
                      </div>
                      <div class="menuBoxText">
                        Omnichannel Retail
                      </div>
                      </a>
                  </li>
                  <li>
                    <a href="{{url('industry-automotive')}}"  class="">
                       <div class="M__menu__box__yelllow">
                      <img src="{{asset('/public/assets/themes/theme-1/images/M-Auto-Tyre.png')}}" class="img-fluid">
                      </div>
                      <div class="menuBoxText">
                        Auto & Tyre
                      </div>
                    </a>
                 </li>
                     <li>
                    <a href="{{url('food-beverage')}}"  class="">
                       <div class="M__menu__box__blue">
                      <img src="{{asset('/public/assets/themes/theme-1/images/M-F-B.png')}}" class="img-fluid">
                      </div>
                      <div class="menuBoxText">
                        Food & Beverage
                      </div>
                    </a>
                 </li>
                     <li>
                    <a href="{{url('industry-electrical')}}"  class="">
                       <div class="M__menu__box__yelllow">
                      <img src="{{asset('/public/assets/themes/theme-1/images/M-Electrical.png')}}" class="img-fluid">
                      </div>
                      <div class="menuBoxText">
                        Electrical
                      </div>
                    </a>
                  </li>
                     <li>
                    <a href="{{url('industry-fmcg')}}">
                       <div class="M__menu__box__blue">
                      <img src="{{asset('/public/assets/themes/theme-1/images/M-FMCG.png')}}" class="img-fluid">
                      </div>
                      <div class="menuBoxText">
                        FMCG
                      </div>
                    </a>
                 </li>
               </ul>
            </li>

            <!-- <li>
              <a href="#">Capabilities</a>
            </li> -->

            <li class="dropdown dropdownCust">
                <a class="dropdown-toggle dropdown-toggle-custom" href="{{url('capabilities')}}" id="navbarDropdown1" data-toggle="dropdown">
                Capabilities
                </a>
              <?php
              if(!empty($capabilities) && count($capabilities) > 0){
              ?>
              <ul class="dropdown-menu dropdown-menu-cust dropdownLink___nav centerMenu" aria-labelledby="navbarDropdown1">

                <?php
                foreach ($capabilities as $capability){
                ?>
                <li><a class="dropdown-item" href="<?php echo url($capability->slug); ?>">{{$capability->title}}</a><li>
                <?php } ?>
                <!-- <li><a class="dropdown-item" href="{{url('journey')}}">Our Journey</a><li>
                <li><a class="dropdown-item" href="#">Leadership Team</a><li> -->
              </ul>
            <?php } ?>
            </li>




            <li>
              <a href="{{url('case-studies')}}">Case Studies</a>
            </li>

              <li class="dropdown dropdownCust">
                <a class="dropdown-toggle dropdown-toggle-custom" href="{{url('varuna-career')}}" id="navbarDropdown" data-toggle="dropdown">
                Careers
                </a>
              <ul class="dropdown-menu dropdown-menu-cust dropdownLink___nav centerMenu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="{{url('career-life-at-varuna')}}">Life at Varuna</a></li>
                <li><a class="dropdown-item" href="{{url('employee-stories')}}">Employee Stories</a></li>
                <li><a class="dropdown-item" href="{{url('learning-development')}}">Learning & Development</a></li>
                <li><a class="dropdown-item" href="#">Open Positions</a></li>
              </ul>
            </li>

            <li class="dropdown dropdownCust">
                <a class="dropdown-toggle dropdown-toggle-custom" href="{{url('about')}}" id="navbarDropdown" data-toggle="dropdown">
                About
                </a>
              <ul class="dropdown-menu dropdown-menu-cust dropdownLink___nav centerMenu" aria-labelledby="navbarDropdown">
                <li><span style="margin-left: 12rem;"></li>
                <li><a class="dropdown-item" href="{{url('corporate')}}">Corporate Overview</a></li>
                <li><a class="dropdown-item" href="{{url('journey')}}">Our Journey</a></li>
                <!--li><a class="dropdown-item" href="#">Leadership Team</a><li-->
              </ul>
            </li>

            <!--li class="dropdown threeHed">
              <a class="dropdown-toggle dropdown-user" href="#" id="navbarDropdown" data-toggle="dropdown">
              Customer Login
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Action</a></li>
              </ul>
            </li-->
            <li><a href="{{url('insights')}}">Insights</a></li>
            <!--li><a href="{{url('/')}}">Media</a></li-->
            <li><a href="{{url('contact-us')}}">Contact</a></li>
            <li><a href="{{url('/')}}">Connect us </a></li>
          </ul>
        </div> <!-- scroll -->
        </div>
      </nav>
    </div>



<!-- ***************************************large****************************************************************** -->




<div class="mainHeder container-fluid hide__on__mobile">
      <nav class="navbar navbar-expand-lg navbar-light fullWidth">
        <div class="collapse navbar-collapse secondHed" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto customNav">

              <li class="dropdown dropdownCust dropdownCustonhover">
               <a class="dropdown-toggle dropdown-toggle-custom" href="{{url('services')}}" id="navbarDropdown"  data-toggle="dropdown">
                Services
              </a>
              <ul class="dropdown-menu dropdown-menu-cust three__box__menu" aria-labelledby="navbarDropdown">
                 <li>
                    <a class="dropdown-item" href="#">
                      <h4 class="menuHeading menuPadding">A robust portfolio
                        <span class="bannerNewLine"></span>
                          for your supply
                         <span class="bannerNewLine"></span>
                          chain needs
                       </h4>
                     </a>
                  </li>
                  <li>
                   <a href="{{url('service-logistics')}}" class="whremrl20">
                     <img src="{{asset('/public/assets/themes/theme-1/images/subHeaderLogo.png')}}" class="img-fluid topMenuLogo" />
                       <p class="topMenuText">
                         Primary transport management <br /> involving long haul trucking
                       </p>
                    </a>
                  </li>
                  <li>
                    <a href="{{url('service-warehousing')}}">
                      <img src="{{asset('/public/assets/themes/theme-1/images/subHeaderLogo2.png')}}" class="img-fluid topMenuLogo" />
                        <p class="topMenuText">

                          Warehousing operations & <br /> secondary transport management
                        </p>
                      </a>
                   </li>
                  <!--li>
                    <a href="{{url('service-integrate')}}"  class="whremrr74">
                      <img src="{{asset('/public/assets/themes/theme-1/images/subHeaderLogo3.png')}}" class="img-fluid topMenuLogo" />
                        <p class="topMenuText">
                         Offering seamlessly integrated logistics <br /> operations via multiple capabilities
                        </p>
                      </a>
                  </li-->
               </ul>
            </li>
            <!-- <li>
              <a href="#"></a>
            </li> -->
            <?php /*
            <li class="dropdown dropdownCust">
                <a class="dropdown-toggle dropdown-toggle-custom" href="{{url('industry-solution')}}" id="navbarDropdown1" data-toggle="dropdown">
                Industry Solutions
                </a>
              <?php
              if(!empty($industry_solution) && count($industry_solution) > 0){
              ?>
              <ul class="dropdown-menu dropdown-menu-cust centerMenu" aria-labelledby="navbarDropdown1">

                <?php
                foreach ($industry_solution as $solution){
                ?>
                <li><a class="dropdown-item" href="<?php echo url($solution->slug); ?>">{{$solution->title}}</a><li>
                <?php } ?>
                <!-- <li><a class="dropdown-item" href="{{url('journey')}}">Our Journey</a><li>
                <li><a class="dropdown-item" href="#">Leadership Team</a><li> -->
              </ul>
            <?php } ?>
            </li> */ ?>

            <li class="dropdown dropdownCust dropdownCustonhover dropdown__box">
               <a class="dropdown-toggle dropdown-toggle-custom" href="{{url('industry-solution')}}" id="navbarDropdown"  data-toggle="dropdown">
                Industry Solutions
              </a>
              <ul class="dropdown-menu dropdown-menu-cust dropdown__menu__box" aria-labelledby="navbarDropdown">
                 <li>
                    <a class="dropdown-item" href="#">
                      <h4 class="menuHeading menuPadding">
                        Offering Solutions <span class="bannerNewLine"></span>
                        Tailored to the <span class="bannerNewLine"></span>
                        need of your <span class="bannerNewLine"></span> bussiness
                       </h4>
                     </a>
                  </li>
                  <li>
                    <a href="{{url('industry-healthcare')}}">
                      <div class="menu__box__yelllow">
                      <img src="{{asset('/public/assets/themes/theme-1/images/Pharma.png')}}" class="img-fluid" />
                      </div>
                      <div class="menuBoxText">
                        Pharma & Healthcare
                      </div>
                    </a>
                 </li>
                  <li>
                    <a href="{{url('industry-omnichannel')}}">
                       <div class="menu__box__blue">
                      <img src="{{asset('/public/assets/themes/theme-1/images/omnichannel.png')}}" class="img-fluid">
                      </div>
                      <div class="menuBoxText">
                        Omnichannel Retail
                      </div>
                      </a>
                  </li>
                  <li>
                    <a href="{{url('industry-automotive')}}"  class="">
                       <div class="menu__box__yelllow">
                      <img src="{{asset('/public/assets/themes/theme-1/images/Auto.png')}}" class="img-fluid">
                      </div>
                      <div class="menuBoxText">
                        Auto & Tyre
                      </div>
                    </a>
                 </li>
                     <li>
                    <a href="{{url('food-beverage')}}"  class="">
                       <div class="menu__box__blue">
                      <img src="{{asset('/public/assets/themes/theme-1/images/Food.png')}}" class="img-fluid">
                      </div>
                      <div class="menuBoxText">
                        Food & Beverage
                      </div>
                    </a>
                 </li>
                     <li>
                    <a href="{{url('industry-electrical')}}"  class="">
                       <div class="menu__box__yelllow">
                      <img src="{{asset('/public/assets/themes/theme-1/images/Electrical.png')}}" class="img-fluid">
                      </div>
                      <div class="menuBoxText">
                        Electrical
                      </div>
                    </a>
                  </li>
                     <li>
                    <a href="{{url('industry-fmcg')}}">
                       <div class="menu__box__blue">
                      <img src="{{asset('/public/assets/themes/theme-1/images/FMCD.png')}}" class="img-fluid">
                      </div>
                      <div class="menuBoxText">
                        FMCG
                      </div>
                    </a>
                 </li>
               </ul>
            </li>

            <!-- <li>
              <a href="#">Capabilities</a>
            </li> -->

            <li class="dropdown dropdownCust dropdownCustonhover">
                <a class="dropdown-toggle dropdown-toggle-custom" href="{{url('capabilities')}}" id="navbarDropdown1" data-toggle="dropdown">
                Capabilities
                </a>
              <?php
              if(!empty($capabilities) && count($capabilities) > 0){
              ?>
              <ul class="dropdown-menu dropdown-menu-cust dropdownLink___nav centerMenu" aria-labelledby="navbarDropdown1">

                <?php
                foreach ($capabilities as $capability){
                ?>
                <li><a class="dropdown-item" href="<?php echo url($capability->slug); ?>">{{$capability->title}}</a><li>
                <?php } ?>
                <!-- <li><a class="dropdown-item" href="{{url('journey')}}">Our Journey</a><li>
                <li><a class="dropdown-item" href="#">Leadership Team</a><li> -->
              </ul>
            <?php } ?>
            </li>




            <li>
              <a href="{{url('case-studies')}}">Case Studies</a>
            </li>

              <li class="dropdown dropdownCust dropdownCustonhover">
                <a class="dropdown-toggle dropdown-toggle-custom" href="{{url('varuna-career')}}" id="navbarDropdown" data-toggle="dropdown">
                Careers
                </a>
              <ul class="dropdown-menu dropdown-menu-cust dropdownLink___nav centerMenu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="{{url('career-life-at-varuna')}}">Life at Varuna</a></li>
                <li><a class="dropdown-item" href="{{url('employee-stories')}}">Employee Stories</a></li>
                <li><a class="dropdown-item" href="{{url('learning-development')}}">Learning & Development</a></li>
                <li><a class="dropdown-item" href="#">Open Positions</a></li>
              </ul>
            </li>

            <li class="dropdown dropdownCust dropdownCustonhover">
                <a class="dropdown-toggle dropdown-toggle-custom" href="{{url('about')}}" id="navbarDropdown" data-toggle="dropdown">
                About
                </a>
              <ul class="dropdown-menu dropdown-menu-cust dropdownLink___nav centerMenu" aria-labelledby="navbarDropdown">
                <li><span style="margin-left: 12rem;"></li>
                <li><a class="dropdown-item" href="{{url('corporate')}}">Corporate Overview</a></li>
                <li><a class="dropdown-item" href="{{url('journey')}}">Our Journey</a></li>
                <!--li><a class="dropdown-item" href="#">Leadership Team</a><li-->
              </ul>
            </li>

            <li class="dropdown threeHed">
              <a class="dropdown-toggle dropdown-user" href="#" id="navbarDropdown" data-toggle="dropdown">
              Customer Login
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </nav>
    </div>