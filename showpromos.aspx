<%@ Page Title="" Language="C#" MasterPageFile="~/project/Project.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Comicon | Show Details</title><link rel="shortcut icon" type="image/ico" href="images/comicon.ico" />
<script type="text/javascript">
    $(function () {

        var SearchString = window.location.search.substring(1);

        var thisUrl = SearchString + "?api_key=63cf3a9135ea7d08fe333090313566aaadc77155&format=jsonp&json_callback=?";

        $.ajax({
            url: thisUrl,
            dataType: 'jsonp',
            success: function (response) {
                var results = response.results;
                if (results) {
                    $("#detailImg").append("<a href='" + results.link + "' target='_blank'><img src='" + results.image.screen_url + "' /></a>");
                    if (results.date_last_updated) {
                        $("#dateCont").append("<span>" + results.date_last_updated + "</span>");
                    }
                    else {
                        $("#dateCont").append("<span>" + results.date_added + "</span>");
                    }
                    $("#titleCont").append("<h4><a href='" + results.link + "' target='_blank'>" + results.name + "</a></h4>");
                    if (results.deck) {
                        $("#descCont").append("<p><a href='" + results.link + "' target='_blank'>" + results.deck + "</a></p>");
                    }
                    else {
                        $("#descCont").append("<p><a href='" + results.link + "' target='_blank'>" + results.description + "</a></p>");
                    }
                }
            }

        });

    });
</script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!--top- heading-->
<div class="top-heading">
	<!--start-wrap-->
	<div class="wrap">
		<h1>Show Details</h1>
	</div>
	<!--end wrap-->
</div> 
<div class="blog-content">
		<div class="wrap">
			<!--blog-grid-->
			<div class="blog-grids">
				<!-- blog-left-->
				<div class="blog-left">
					<!-- start slider -->
						
						<div class="jesus" id="detailedContainer">
							<div class="icon1">
								<a href="#"><span> </span></a>
							</div>
							<div id="detailImg"></div>
							<div class="sinfo">
							<div class="sinfo-left">
								<h3>date</h3>
								<div id="dateCont"></div>
								
							</div>
							<div class="sinfo-right">
								<div id="titleCont"></div>
                                <div id='descCont'></div>
								
							</div>
							 <div class="clear"> </div>
						</div>
						</div>
						
						
						<h6> </h6>
						<!--end slider-->
					</div>
				<!--end blog-left-->
							<!--grid-right-->
			<div class="grid-right">
				<div class="side-bar">
				<div class="grid-right-headings">
					<h2><a href="#">comicon</a></h2>
					<h6> </h6>
						<div class="clear"> </div>
				</div>
				<p style="padding:0px;">Comicon is a Comic website which will take you back into the comic world.
				Sit back relax and browse back to your childhood memories.</p> 
				<div class="grid-right-headings">
					<h2><a href="search.aspx" target="_blank">categories</a></h2>
					<h6> </h6>
						<div class="clear"> </div>
				</div>
				<div class="seach-links">
				<p><a href="search.aspx?char" target="_blank"> Characters</a></p>
				<p><a href="search.aspx?mov" target="_blank"> Movies</a></p>
				<p><a href="search.aspx?gen" target="_blank"> Genre</a></p>
				<p><a href="search.aspx?pub" target="_blank"> Publishers</a></p>
				<p><a href="search.aspx?ser" target="_blank"> Series</a></p>
                <p><a href="search.aspx?vol" target="_blank"> Volumes</a></p>
				</div>
				</div>
			</div>
			<!--end grid-right-->
			<div class="clear"> </div>
		</div>
		<!--end about-grids-->
	</div>	
</div>
<!--about-content-->
<!--end about-->
</asp:Content>


