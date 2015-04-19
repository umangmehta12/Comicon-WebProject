<%@ Page Title="" Language="C#" MasterPageFile="~/project/Project.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Comicon | Store Locator</title><link rel="shortcut icon" type="image/ico" href="images/comicon.ico" />
<style type="text/css">    iframe    {        width:100%;        height:300px;        border:0px;        overflow:hidden;     }</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="top-heading">
	<!--start-wrap-->
	<div class="wrap">
		<h1>Comic Store Locator</h1>
	</div>
	<!--end wrap-->
</div> 
<!--start portfolio-->
<div class="wrap">
<div class="main">
    <p><strong>Comic Store</strong> near you.</p>
    <iframe src="map.html"></iframe>
    </div></div>
</asp:Content>

