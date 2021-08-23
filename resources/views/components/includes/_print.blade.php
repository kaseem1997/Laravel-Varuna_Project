<html>


<head>

    <title>varuna</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" type="text/css" href="{{asset('assets/themes/theme-1/css/bootstrap.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/themes/theme-1/css/owl.carousel.min.css')}}">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/themes/theme-1/css/animate.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/themes/theme-1/css/custom.css')}}">
    <style type="text/css">
      @media print {
  .red1{ background:#1c2c5e; -webkit-print-color-adjust: exact}
  .table tr td { padding: 8px; }
  }
      body{
        font-family: 'Mulish', sans-serif;
        line-height: 26px;
        font-weight: 400;
        color: #1c2c5e;
        box-sizing: border-box;
        font-size: 14px;
      }
      .pringLogo {
        background-color: #1c2c5e;
        -webkit-print-color-adjust: exact
        padding: 31px;
        margin-bottom: 29px;
        text-align: center;
      }
      .print__img {
        padding: 20px 0;
      }
    .print__main {
      margin-bottom: 40px;
    }
    .print__cat h6 {
      text-transform: uppercase;
      color: #f8a519;
      font-weight: 900;
      font-size: 18.09px;
    }
    .print__blogTimeDate a{
      line-height: 37.46px;
      text-transform: uppercase;
      font-weight: 700;
      color: #606060;
    }
    </style>
</head>
<body>

  <?php
  $category = (isset($insight->blogCategories))?$insight->blogCategories:'';

  $cat1Name = '';
  if(!empty($category) && count($category) > 0){
  $category = $category->first();
  $cat1Name = $category->name;
  }

  $blogDate = CustomHelper::DateFormat($insight->created_at, $toFormat='d M, Y', $fromFormat='');




$detail_words = CustomHelper::get_words_count($insight->content);

$total_decimal = $detail_words/200;
$reads_count = round($total_decimal);

if($reads_count == 0){
   $reads_count = "few seconds";
}else if($reads_count == 1){
   $reads_count = $reads_count.' Minute';
}else{
   $reads_count = $reads_count.' Minutes';
}

$storage = Storage::disk('public');

$blog_images = (isset($insight->Images))?$insight->Images:'';

$image = asset('assets/themes/theme-1/images/default-img.png');
if(!empty($blog_images) && count($blog_images)){
  foreach($blog_images as $bimg){
    if(!empty($bimg->image) && $storage->exists('blogs/'.$bimg->image)){
      $image = asset('storage/blogs/'.$bimg->image);
      break;
    }
  }
}
  ?>

    <div class="container">
      <div class="row justify-content-center">
        <div class="col-12">
          <div class="pringLogo red1">
              <a class="navbar-brand" href="/"><img class="img-fluid logo" src="{{asset('assets/themes/theme-1/images/logoNew.png')}}" alt="logo"></a>
          </div>
          <div class="print__main">
            <h1>{{$insight->title}}</h1>
             <div class="print__img">
              <img class="img-fluid" src="{{$image}}" alt="">
            </div>
            <div class="print__cat">
              <h6>{{$cat1Name}}</h6>
              <div class="print__blogTimeDate">
                <a href="#"><?php if(!empty($insight->author_name)){ echo $insight->author_name.' . '; }?>{{$blogDate}} . {{$reads_count}}</a>&nbsp;<a href="#"> read</a>
              </div>
            </div>

            <?php echo $insight->content; ?>

            <?php
            /*
            ?>
          <p>With every challenge comes an opportunity to innovate and sow the seeds of a new order. COVID-19 caused unprecedented disruptions across the country. On one hand, where the pandemic exposed the inadequacies of the Indian logistics sector, it also brought to the fore the sector’s ability to innovate & recuperate without breaking down.

          It was evident that an industry fraught with multiple contact points and a long paper chain per trip put its on-ground workers at a grave risk of contamination. Perceiving the towering need for ‘Contactless Logistics’, Varuna Group fast tracked the development of its roadmap to bring in greater safety and efficiency into the system.</p>

          <h2>Pivoting towards contactless logistics</h2>
          <p> The conventional transportation system includes a multitude of paper-based business processes - from handling of the lorry receipt (consignment note)  to collection of a paper document as proof of delivery - which is time-consuming, leads to data quality problems and eventually impedes operational efficiency. Contactless Logistics aims to largely eliminate all forms of time-consuming human interventions and automate the entire process to the maximum extent.</p>

        <h2>Benefits of contactless logistics</h2>

        <p>Error-free operation
        Ensures safety and sanitation
        Greater transparency and visibility
        Reduced transit lead time
        Improvement in productivity levels
        A sustainable practice - reduces carbon footprint
        A healthier & safer work environment
        Digital LR: The first step towards contactless logistics</p>
        <p>
        Lorry Receipt (LR), an undertaking by the transporter to deliver the goods to the destination, is an indispensable part of the transportation process. Three physical copies (driver, consignee and consignor) of the consignment note are passed on by the customer to the driver. While digital Lorry Receipt (digital LR) as a concept has existed for many years, there was no actionable solution in sight due to several reasons -
        </p> */?>

          </div>
        </div>
      </div>
    </div>

    <script type="text/javascript" src="{{asset('assets/themes/theme-1/js/jquery-3.4.1.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('assets/themes/theme-1/js/popper.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('assets/themes/theme-1/js/bootstrap.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('assets/themes/theme-1/js/owl.carousel.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('assets/themes/theme-1/js/wow.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('assets/themes/theme-1/js/custom.js')}}"></script>
</body>
</html>