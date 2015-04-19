<%@ Page Title="" Language="C#" MasterPageFile="~/project/Project.master" AutoEventWireup="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Comicon | Contact</title><link rel="shortcut icon" type="image/ico" href="images/comicon.ico" />
<style type="text/css">    iframe    {        width:100%;        height:300px;        border:0px;        overflow:hidden;     }</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!--top- heading-->
<div class="top-heading">
	<!--start-wrap-->
	<div class="wrap">
		<h1>contact</h1>
	</div>
	<!--end wrap-->
</div> 
<!--start contact-->
<div class="wrap">
<div class="content">
		
			<!-- blog-grids-->
			<div class="main-grid">
				<!-- blog-left-->
				<div class="contact-left">
					<div class="map">
    <iframe src="location.html"></iframe>
						</div>
					<div class="contact">
					<div class="company_address">
				     	<h3>Comicon</h3>
						<p>75 St Alphonsus Street</p>
						<p>Boston,MA</p>
						<p>02120</p>
				   		<p>Telephone :(617)-435-3275</p>
				 	 	<p>Email : <a href="mailto:comicwebies@gmail.com"> comicwebies@gmail.com</a></p>
						<p>Email : <a href="mailto:umang12@ccs.neu.edu"> umang12@ccs.neu.edu</a></p>
				   </div>
					<div class="contact-form">
					    <form method="post" action="contact-post.html">
					    	<div>
						    	<span><input name="userName" type="text" class="textbox right" value="first Name" onfocus="if(this.value == 'first Name') this.value='';" onblur="if(this.value == '') this.value='first Name';"></span>
						    </div>
						    <div>
						    	<span><input name="userName" type="text" class="active textbox" value="last Name" onfocus="if(this.value == 'last Name') this.value='';" onblur="if(this.value == '') this.value='last Name';"></span>
						    </div>
						     <div class="clear"></div>
						    <div>
						    	<span><input name="userName" type="text" class="textbox right" value="Email Address" onfocus="if(this.value == 'Email Address') this.value='';" onblur="if(this.value == '') this.value='Email Address';"></span>
						    </div>
			
						    <div class="clear"></div>
						    <div>
						    	<span><textarea rows="2" cols="70" onfocus="if(this.value == 'Your Message') this.value='';" onblur="if(this.value == '') this.value='Your Message';">Your Message</textarea></span>
						    </div>
						   <div>
						   		<span><input type="submit" class="" value="Submit"></span>
						  </div>
					    </form>
				    </div>
				    <div class="clear"></div>
				</div>
				</div>
				<div class="contact-right">
					<div class="side-bar">
				<div class="grid-right-headings">
					<h2><a href="#">Comicon</a></h2>
					<h6> </h6>
						<div class="clear"> </div>
				</div>
				<p style="padding:0px;">Comicon is a Comic website which will take you back into the comic world.Sit back relax and browse back to your childhood memories.</p> 
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


