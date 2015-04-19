<%@ Page Title="" Language="C#" MasterPageFile="~/project/Project.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Comicon | Home</title><link rel="shortcut icon" type="image/ico" href="images/comicon.ico" />
<!-- jQuery -->
<!--start slider-->
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
                thumbnails: true
            });
        });
	</script>
<!--end slider-->
<!--start gallery-->
	<script type="text/javascript" src="js/jquery.easing.min.js"></script>	
	<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
	<script type="text/javascript">
	    $(function () {

	        var filterList = {

	            init: function () {

	                // MixItUp plugin
	                // http://mixitup.io
	                $('#gallerylist').mixitup({
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
	                $('#gallerylist .portfolio').hover(
					function () {
					    $(this).find('.label').stop().animate({ bottom: 0 }, 200, 'easeOutQuad');
					    $(this).find('img').stop().animate({ top: -30 }, 500, 'easeOutQuad');
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
<!--Add fancyBox main JS and CSS files-->
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
		<script>
		    $(document).ready(function () {
		        var uri = "http://www.comicvine.com/api/promos/?api_key=63cf3a9135ea7d08fe333090313566aaadc77155&format=jsonp&json_callback=?";
		        $.ajax({
		            url: uri,
		            dataType: 'jsonp',
		            success: function (response) {
		                for (var i = 0; i < 4; i++) {
		                    if (response.results[i].name) {
		                        $('#gallerylist').append("<div class='newPortfolio'><div class='portfolio-wrapper'><a href='showpromos.aspx?" + response.results[i].api_detail_url + "' target='_blank'><img src='" + response.results[i].image.medium_url + "' class='comimg' /><span><img src='images/plus.png' /></span><div class='desc'><h2>" + response.results[i].name + "</h2></div></a></div></div>");
		                    }
		                }
		            }
                    
		        });
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


<!-- start slider -->
<div class="main-con">
	<div class="slider">
		<div class="color"> <span> </span></div>
		<div class="wrap">
		<div class="fluid_container">
        <div class="camera_wrap camera_magenta_skin" id="camera_wrap_2">
            <div data-thumb="images/them1.jpg" data-src="images/slider1.jpg">
                <div class="camera_caption fadeFromBottom">
                    <h2>Spider Man</h2>
                    <p>Spider-Man is a fictional character, a comic book superhero that appears in comic books published by Marvel Comics.
					Created by writer-editor Stan Lee and writer-artist Steve Ditko, he first appeared in Amazing Fantasy #15 (cover-dated Aug. 1962).
			        </p>
                </div>
            </div>
            <div data-thumb="images/them2.jpg" data-src="images/slider2.jpg">
                <div class="camera_caption fadeFromBottom">
                  <h2>Super Man</h2>
                    <p>Superman is a fictional character, a superhero that appears in comic books published by DC Comics,
					and is considered an American cultural icon.Superman was created by writer Jerry Siegel and artist Joe Shuster,
					high school students living in Cleveland, Ohio.
					</p>
                </div>
            </div>
            <div data-thumb="images/them3.jpg" data-src="images/slider3.jpg">
                <div class="camera_caption fadeFromBottom">
                   <h2>Iron Man</h2>
                    <p>Iron Man is a fictional character, a superhero that appears in comic books published by Marvel Comics.
					The character was created by writer-editor Stan Lee, developed by scripter Larry Lieber, and designed by artists Don Heck and Jack Kirby.
					</p>
                </div>
            </div>
            <div data-thumb="images/them4.jpg" data-src="images/slider4.jpg">
                <div class="camera_caption fadeFromBottom">
               	    <h2>Batman</h2>
                    <p>Batman is a fictional character, a comic book superhero appearing in comic books published by DC Comics. 
					Batman was created by artist Bob Kane and writer Bill Finger, and first appeared in Detective Comics #27 (May 1939).
					</p>
                </div>
            </div>
            <div data-thumb="images/them5.jpg" data-src="images/slider5.jpg">
                <div class="camera_caption fadeFromBottom">
                    <h2>Captain America</h2>
                    <p>Captain America is an American fictional character, a superhero who appears in comic books published by Marvel Comics. 
					The character first appeared in Captain America Comics #1 from Marvel Comics 1940s and was created by Joe Simon and Jack Kirby.</p>
                </div>
            </div>
            <div data-thumb="images/them6.jpg" data-src="images/slider6.jpg">
                <div class="camera_caption fadeFromBottom">
                  <h2>X-Men</h2>
                    <p>The X-Men are a team of mutant superheroes in the Marvel Universe. 
					They were created by writer Stan Lee and artist Jack Kirby, and first appeared in The X-Men #1 (September 1963)</p>
                </div>
            </div>
            
        </div><!-- #camera_wrap_2 -->
    </div><!-- .fluid_container -->
    <div class="clear"></div>
	</div>
</div>
<!--end slider-->
<!--start home-page-con-->			  					     

	<div class="home-page-con">
		<div class="wrap">
		<div class="top-grids">
			<div class="top-grid">
				<div class="top-grid-info">
					<img src="images/por.png" style="margin-top: 4px;" alt=" "/>
					<h2>Check out the latest Comical Movies Preview</h2>
					<div class="clear"> </div>
				</div>
				<p>This will search for you the latest and the most Amazing Videos on Comicon.
				The Video Search can be based upon Characters and Name of the Comic.</p>
				<a class="btn" href="search.aspx?mov" target="_blank">Watch</a>
			</div>
			<div class="top-grid">
				<div class="top-grid-info">
					<img src="images/search.png" alt=" "/>
					<h2>check out the various searches</h2>
					<div class="clear"> </div>
				</div>
				<p>Look at some of the cool stuff.You check out your most favourite Character.
				Movies which star your favourite character and the publisher who published the Comic on your character.</p>
				<a class="btn" href="search.aspx" target="_blank">Search</a>
			</div>
			<div class="top-grid">
				<div class="top-grid-info">
					<img src="images/storelocator.jpg" alt=" "/>
					<h2>Store locator</h2>
					<div class="clear"> </div>
				</div>
				<p>Check out the comic store near you.Now search for the store where you will get all the Comics,New Releases and more.
				Just a click away.</p>
				<a class="btn" href="comicstores.aspx" target="_blank">Locator</a>
			</div>
			<div class="clear"> </div>
		</div>
		
			<div class="heading">
				<h2>Promos</h2>
				<h6> </h6>
					<div class="clear"> </div>
			</div>
<!--end home-page-con-->
<div class="main_btm">
		
			<!--start-mfp -->	
			<div id="small-dialog1" class="mfp-hide">
				<div class="pop_up">
					<img src="images/popup.jpg" alt=" "/>
					<p class="para"></p>
				</div>
			</div>
			<!--end-mfp -->	
		<!--start-content-->
			<div class="gallery">
					<div class="clear"> </div>
					<div class="container">
					
			<div id="gallerylist">
			
				

			</div>																																							
		</div>
	</div><!-- container -->
	<script type="text/javascript" src="js/fliplightbox.min.js"></script>
	<script type="text/javascript">	    $('body').flipLightBox()</script>
	<div class="clear"> </div>
	</div>

</div>
</div>
<!--End-gallery-->
</asp:Content>

