<%@ Page Title="" Language="C#" MasterPageFile="~/project/Project.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Comicon | Searches</title><link rel="shortcut icon" type="image/ico" href="images/comicon.ico" />
<!-- start slider -->
	<link href="css/camera.css" rel="stylesheet" type="text/css" media="all" />
	<script src="js/jquery.min.js"></script>
    <script type='text/javascript' src="js/jquery.mobile.customized.min.js"></script>
    <script type='text/javascript' src="js/jquery.easing.1.3.js"></script> 
    <script type='text/javascript' src="js/camera.min.js"></script>
    <script>
        jQuery(function () {

            jQuery('#camera_wrap_2').camera({

                loader: 'bar',
                pagination: false,
                thumbnails: false
            });
        });
	</script>
<!-- end slider -->
<!-- start gallery -->
	<script type="text/javascript" src="js/jquery.easing.min.js"></script>	
	<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
	<script type="text/javascript">
	    $(function () {

	        var filterList = {

	            init: function () {

	                // MixItUp plugin
	                // http://mixitup.io
	                $('#portfoliolist').mixitup({
	                    targetSelector: '.portfolio',
	                    filterSelector: '.filter',
	                    effects: ['fade'],
	                    easing: 'snap',
	                    // call the hover effect
	                    onMixEnd: filterList.hoverEffect()
	                });

	            },

	            hoverEffect: function () {

	                // Simple parallax effect
	                $('#portfoliolist .portfolio').hover(
					function () {
					    $(this).find('.label').stop().animate({ bottom: 0 }, 200, 'easeOutQuad');
					    $(this).find('img').stop().animate({ top: 0 }, 500, 'easeOutQuad');
					},
					function () {
					    $(this).find('.label').stop().animate({ bottom: -40 }, 200, 'easeInQuad');
					    $(this).find('img').stop().animate({ top: 0 }, 300, 'easeOutQuad');
					}
				);

	            }

	        };

	        // Run the show!
	        filterList.init();


	    });	
	</script>
<!-- Add fancyBox main JS and CSS files -->
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
		<script>
		    $(document).ready(function () {
		        $('.popup-with-zoom-anim').magnificPopup({
		            type: 'inline',
		            fixedContentPos: false,
		            fixedBgPos: true,
		            overflowY: 'auto',
		            closeBtnInside: true,
		            preloader: false,
		            midClick: true,
		            removalDelay: 300,
		            mainClass: 'my-mfp-zoom-in'
		        });
		    });
		</script>

  
   <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>      				
   <script type="text/javascript">
       
       $(function () {

           var SearchString = window.location.search.substring(1);
           var paramAr = new Array;

           

           if (SearchString == '') {
               $('#loadingimg').show();
               $('#all').addClass("active"); 
               paramAr = ["characters", "movies", "concepts", "publishers", "series_list", "volumes"]; 
               getData(paramAr);
           }
           else if (SearchString == 'char') {
               $('#char').addClass("active"); 
               $('#loadingimg').show();
               paramAr = ["characters"];
               getData(paramAr);
           }
           else if (SearchString == 'mov') {
               $('#mov').addClass("active"); 
               $('#loadingimg').show();
               paramAr = ["movies"];
               getData(paramAr);
           }
           else if (SearchString == 'gen') {
               $('#gen').addClass("active"); 
               $('#loadingimg').show();
               paramAr = ["concepts"];
               getData(paramAr);
           }
           else if (SearchString == 'pub') {
               $('#pub').addClass("active");
               $('#loadingimg').show();
               paramAr = ["publishers"];
               getData(paramAr);
           }
           else if (SearchString == 'ser') {
               $('#ser').addClass("active");
               $('#loadingimg').show();
               paramAr = ["series_list"];
               getData(paramAr);
           }
           else if (SearchString == 'vol') {
               $('#vol').addClass("active");
               $('#loadingimg').show();
               paramAr = ["volumes"];
               getData(paramAr);
           }
       });


       function getData(paramAr) {
           for (var al = 0; al < paramAr.length; al++) {
               var uri = "http://www.comicvine.com/api/" + paramAr[al] + "/?api_key=63cf3a9135ea7d08fe333090313566aaadc77155&format=jsonp&json_callback=?";
               $.ajax({
                   url: uri,
                   dataType: 'jsonp',
                   success: function (response) {
                       for (var i = 0; i < response.results.length; i++) {
                           if (response.results[i].name) {
                               $('#portfoliolist').append("<div class='newPortfolio'><div class='portfolio-wrapper'><a href='showdetails.aspx?"+response.results[i].api_detail_url+"' target='_blank'><img src='" + response.results[i].image.medium_url + "' class='comimg' /><span><img src='images/plus.png' /></span><div class='desc'><h2>" + response.results[i].name + "</h2></div></a></div></div>");
                               $('#loadingimg').hide();
                           }
                       }
                   }

               });
           }
       }
    </script>
    
    <style type="text/css">
        .newPortfolio{
          -moz-box-sizing: border-box;
            display: inline-block;
            float: left;
            margin: 1% 1% 4%;
            overflow: hidden;
            width:23%;}
            .comimg
            {
                width:248px;
                height:185px;
                overflow:hidden;}
             #loadingimg{display:none;width:50px; height:50px;}
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!--top- heading-->
<div class="top-heading">
	<!--start-wrap-->
	<div class="wrap">
		<h1>Searches</h1> 
	</div>
	<!--end wrap-->
</div> 
<!--start portfolio-->
<div class="wrap">
<div class="main">
	<!-- start gallery  -->
			<div class="gallery1">
					<div class="container">
					<ul id="filters" class="clearfix">
						<li><span class="filter" id='all'><a href="search.aspx">All</a></span></li>
						<li><span class="filter" id='char' ><a href="search.aspx?char"  target="_blank">Character</a></span></li>
                        <li><span class="filter" id='mov'><a href="search.aspx?mov" target="_blank">Movies</a></span></li>
                        <li><span class="filter" id='gen'><a href="search.aspx?gen" target="_blank">Genre</a></span></li>
						<li><span class="filter" id='pub'><a href="search.aspx?pub" target="_blank">Publishers</a></span></li>
						<li><span class="filter" id='ser' ><a href="search.aspx?ser" target="_blank">Series</a></span></li>
						<li><span class="filter" id='vol' ><a href="search.aspx?vol" target="_blank">Volumes</a></span></li>
					</ul> 
       	
			<div id="portfoliolist">
                <img src='images/loading.gif' id='loadingimg' />
            </div>


	</div><!-- container -->
	<script type="text/javascript" src="js/fliplightbox.min.js"></script>
	<script type="text/javascript">	    $('body').flipLightBox()</script>
	<div class="clear"> </div>
	</div>
<!--End-gallery-->
</div>
</asp:Content>

