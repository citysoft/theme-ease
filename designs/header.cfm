<!--- 
Theme: 	Ease
File: 	header.cfm
Notes: 	This is a sample header file.  The header file file is generally called from 
		head.cfm after the call to init.cfm.
--->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<!--- Add any <meta> tags as necessary --->
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<!--- Add Title and Meta Tags --->
			<cfoutput>
				<title>MY ORGANIZATION | <cfif isHomepage>HOME PAGE TITLE<cfelse>#attributes.pagetitle#</cfif></title>
				#getMetaTags()#
			</cfoutput>
		<!--- Add style sheets as necessary. --->
		<!---<cfoutput>
			<link rel="stylesheet" href="../_data/#vNodeFolder#/styles/cs_theme2.css" type="text/css" media="screen" />
		</cfoutput>--->
		<cfoutput>
			<link rel="stylesheet" href="../_data/#vNodeFolder#/styles/main.css" type="text/css" media="screen" />
			<cfif isHomepage>
				<link rel="stylesheet" href="../_data/#vNodeFolder#/styles/home.css" type="text/css" media="screen" />			
			</cfif>
		</cfoutput>
		<!--[if IE 6]>
			<style type="text/css" media="screen">
				#mainContent #support {width: 497px;}
				#memberLogin form {width: 256px;}
			</style>
		<![endif]-->
		<!--[if IE 7]>
			<style type="text/css" media="screen">
				#memberLogin form {width: 256px;}
				ul#nav li:hover ul {top: 26px;}
				ul#nav ul li {width: 160px; margin-top: -4px;}
			</style>
		<![endif]-->
        <script src="http://cdn.jquerytools.org/1.2.7/full/jquery.tools.min.js"></script>
        <script type="text/javascript">
$(document).ready(function(){
		
		// Slideshow
		$(".cs2_slidetabs").tabs(".cs2_slides > .cs2_homeSlide", {
			effect: 'fade',
			fadeOutSpeed: "slow",
			rotate: true
		}).slideshow({
			autoplay:true,
			interval:'8000'
		});
	
		});
	
		// Slideshow 2 bottom of Home page
		$(function() {
		
		$(".home-slide-tabs").tabs(".home-slide-images > div", {
		
			// enable "cross-fading" effect
			effect: 'fade',
			fadeOutSpeed: "slow",
		
			// start from the beginning after the last tab
			rotate: true
		
		// use the slideshow plugin. It accepts its own configuration
		}).slideshow( {next: '.home-slide-forward', prev:'.home-slide-backward', interval: 9000, autoplay: false, clickable: false } );
		
		
		});
		
		</script>
	</head>
	<body>
    <!-- HEAD META -->
		<div class="metaBannerContain">
  		<div class="metaBannerContent">
			<a href="/join">Join</a> |    
				<cfif isDefined("client.userid") and client.userid NEQ 0>
					<cfoutput><a href="/index.cfm?fuseaction=home.editUserProfile">#request.editProfileTitle#</a></cfoutput> |
					<a href="/index.cfm?fuseaction=home.Logout&nodeID=1">Logout</a> |
					<cfif isDefined("client.issuperuser") and client.issuperuser EQ 1>
						<a href="/admin">Admin</a> | 
						<cfif isDefined("attributes.pageid") and isNumeric(attributes.pageID)>
						<cfoutput>
		                <a href="/admin/index.cfm?fuseaction=PageAdmin.editLivePage&amp;pageID=#attributes.pageid#">Edit This Page</a> |
						</cfoutput>
			            </cfif>
					</cfif>
				<cfelse>
					<a href="/login">Login</a> | 
				</cfif><a href="/subscribe">Subscribe</a>
		</div>	
		</div>
		
		<!-- /END -->
		<!-- START FIXED META HEADER SPACER -->
		<div class="metaHeadSpace"></div>
		<!-- /END-->
		<cfoutput>
			<div class="boxShadowHeader"><img src="../_data/#vNodeFolder#/images/shadow.png" width="993" height="17" /></div>
		</cfoutput>
		<!-- HEADER-->
		<div class="headerBGcontainer">
		  <div class="headerContain">
		    <div class="logoContain"> <br />
		      <cfoutput><img src="../_data/#vNodeFolder#/images/logo.png" width="205" height="88" /></cfoutput><br />
		    </div>
		    <div class="taglineContain">
		      <h1 class="taglineTitle"> Mission statement or tagline</h1>
		    </div>
			<!--- Search --->
	  		<div class="searchContain">
				<script language="JavaScript" type="text/javascript">
					// Disable this button and submit form and display message if they are supplied
					function disableButton (oMyButton, oMyForm, sMessage)
					{
						//alert(typeof(sMessage));
						if (typeof(sMessage)!='undefined')
						{
							document.getElementById(sMessage).style.visibility='visible';
						}
						oMyButton.disabled=true;
						if (typeof(oMyForm)=='object') // If a form is supplied, then submit it
						{
							oMyForm.submit();
						}
					}
				
					function stopRKey(evt) {
					  var evt = (evt) ? evt : ((event) ? event : null);
					  var node = (evt.target) ? evt.target : ((evt.srcElement) ? evt.srcElement : null);
					  if ((evt.keyCode == 13) && (node.type=="text"))  {return false;}
					}
				
					document.onkeypress = stopRKey;
				</script>
				
				<cfparam name="tdClass" default="publicHeader" >
				<cfparam name="inNavBar" default="0" />
				<cfparam name="form.searchanyofwords" default=""/>
				
				<cfinclude template="../../../act_nodehandeler.cfm" />
			
				<div id="searchwidget">
				<cfoutput>
					<form name="simpleSearchForm" id="simpleSearchForm" action="#request.self#?fuseaction=simplesearch2.processarguments2" method="post">
						<input type="text" name="searchanyofwords" value="#FORM.searchanyofwords#" size="15" maxlength="100" class="appInputText" />
						<input type="button" value="Search" class="appInputButton" onclick="disableButton(this, document.getElementById('simpleSearchForm'), 'processMsg');" /><br />
						<span id="processMsg" style="color:ff0000;font-weight:bold;font-size:11px;visibility:hidden;">Searching...  May Take A Few Moments</span>
						<script language="JavaScript" type="text/javascript">
							document.getElementById('processMsg').style.visibility='hidden';
						</script>
					</form>
				</cfoutput>
				</div>
				<!-- End Search Widget -->
			</div><!-- End Search Contain -->
 			<!-- Start Email Subscription Widget-->
			<cfoutput>
			<div id="emailsubscription">
			    <cfif client.userid lte 0>
					<form name="newsletter" method="post" action="/index.cfm?fuseaction=email.subscribe">
						<input type="text" class="textfield" value="Email" onfocus="if(this.value==this.defaultValue) this.value='';" onblur="if(this.value=='') this.value = 'Email';" maxlength="50"  name="email_post">
				        <input type="text" class="textfield"  value="Zip Code" size="11px" onfocus="if(this.value==this.defaultValue) this.value='';" onblur="if(this.value=='') this.value = 'Zip Code';" maxlength="10"  name="postalcode">
				        <input type="hidden" value="1" name="EmailRecipientListIDs">
				        <input type="submit" class="button" value="Join Our Email List" name="submit">
					</form>
					<p class="emailsubscriptionfoot"><a href="/index.cfm?pageId=xxx">Optional message / link here</a></p>
				<cfelse>
			    	<a href="/index.cfm?fuseaction=email.subscribe" title="Manage my subscriptions">My Subscriptions</a>
					<p class="emailsubscriptionfoot"><a href="/index.cfm?pageId=xxx">Optional message / link here</a></p>
			    </cfif>
			</div>
			</cfoutput>
			<!-- End Email Subscription Widget -->
		  </div><!--- End headerContain --->
		</div><!--- End headerBGcontainer --->
		<!-- /END -->
		<!-- NAV -->
		<div class="mainNavBackg">
  		<div class="navWrap">
 			<!--- START: Navigation --->
			<ul id="nav" class="drop" style="border-right:0px; ">
				<!--- The following variables is used in the navigation to manage which pages are 
				allowed in the navigation (e.g. password protected pages would typicallly not be allowed 
				in the navigation for a non-logged in user, unless you were trying to tease the restricted
				content).  These variables can also be set to "private" and NULL (ie not defined at all) --->
				<cfif not isDefined("client.userID") or client.userId lte 0>
					<cfset topmenu_show="public">
                <cfelse>
					<cfset topmenu_show="roleid">
				</cfif>
				<!--- Include main navigation file.  This will in turn include a cached navigation
				file that, in conjunction with the id defined above and the .css file, will define 
				the navigation (e.g. a drop down menu structure). --->
				<cfinclude template="../../../_includes/design/menu.cfm">
				<!--- Optional - Add login related links to navigation. --->
				<!---
				<cfif isDefined("client.userid") and client.userid NEQ 0>
						<li class="member" style="border-right:0px"><a href="/index.cfm?fuseaction=home.Logout&nodeID=1">Logout</a></li>
					<cfif isDefined("client.issuperuser") and client.issuperuser EQ 1>
						<li class="member" style="border-right:0px"><a href="/admin">Admin</a></li>
					</cfif>
				<cfelse>
					<li class="member" style="border-right:0px"><a href="/index.cfm?pageId=xxx">Member Login</a></li>
				</cfif>--->
			</ul>
			<!--- END: Navigation --->  
		  </div>
		</div>
		<!-- /END -->
		<!-- CONTENT BODY -->
		<div class="contentBodyContain">
		<!-- End Design Header File -->
		<!-- START HOME CONTENT CONTAINER -->
		<cfif isHomepage>
		<div class="hmContentContainer">
			<div class="imageSlideContainer">
				<div id="cs2_homeSlider">
					<div class="cs2_slides">

						<!-- first slide -->			
						<cfset homeslide1 = application.apiv1.sectionsapi.getContentSection("Home Slide 1")>
						<cfoutput>
						<cfif isDefined("homeslide1.query.content")>#homeslide1.query.content#</cfif>
						</cfoutput>

						<!-- second slide -->			
						<cfset homeslide2 = application.apiv1.sectionsapi.getContentSection("Home Slide 2")>
						<cfoutput>
						<cfif isDefined("homeslide2.query.content")>#homeslide2.query.content#</cfif>
						</cfoutput>

						<!-- third slide -->			
						<cfset homeslide3 = application.apiv1.sectionsapi.getContentSection("Home Slide 3")>
						<cfoutput>
						<cfif isDefined("homeslide3.query.content")>#homeslide3.query.content#</cfif>
						</cfoutput>

						<!-- fourth slide -->			
						<cfset homeslide4 = application.apiv1.sectionsapi.getContentSection("Home Slide 4")>
						<cfoutput>
						<cfif isDefined("homeslide4.query.content")>#homeslide4.query.content#</cfif>
						</cfoutput>
					
					</div>
					<a class="backward">prev</a>
					<ul class="cs2_slidetabs">
						<li>
							<a href="#">1</a></li>
						<li>
							<a href="#">2</a></li>
						<li>
							<a href="#">3</a></li>
						<li>
							<a href="#">4</a></li>
					</ul>
					<a class="forward">next</a>
				</div>
			</div> 
			<br style="clear:both" /> 
			<!-- HOME HIGHLIGHT BOX-->
			<div class="highlightboxContainer">				
				<!-- Content Spotlight 1 -->
				<cfset contentspotlight1 = application.apiv1.sectionsapi.getContentSection("Content Spotlight 1")>
				<cfoutput>
					<cfif isDefined("contentspotlight1.query.content")>#contentspotlight1.query.content#</cfif>
				</cfoutput>
				<!-- Content Spotlight 2 -->
				<cfset contentspotlight2 = application.apiv1.sectionsapi.getContentSection("Content Spotlight 2")>
				<cfoutput>
					<cfif isDefined("contentspotlight2.query.content")>#contentspotlight2.query.content#</cfif>
				</cfoutput>
				<!-- Content Spotlight 3 -->
				<cfset contentspotlight3 = application.apiv1.sectionsapi.getContentSection("Content Spotlight 3")>
				<cfoutput>
					<cfif isDefined("contentspotlight3.query.content")>#contentspotlight3.query.content#</cfif>
				</cfoutput>
				<!-- Content Spotlight 4 -->
				<cfset contentspotlight4 = application.apiv1.sectionsapi.getContentSection("Content Spotlight 4")>
				<cfoutput>
					<cfif isDefined("contentspotlight4.query.content")>#contentspotlight4.query.content#</cfif>
				</cfoutput>
                <br style="clear:both" />
			</div>
			<!-- /END HOME HIGHLIGHT BOX-->
		</div>
		<!-- / END HOME CONTENT CONTAINER-->	
        	
		<!-- SHADOW -->
		<div class="boxShadow"><img height="17" src="/_data/n_0001/images/shadow.png" width="993" /></div>
		<!-- /END SHADOW --><br />
		<!-- START HOME FEATURES CONTAINER -->
		<div class="hm_featuresContainer">
			<!-- START LOWER SLIDES CONTAINER -->
			<div class="spotlightMediaBox">
				<h1 class="hmContentTitle">
					Spotlight/Media Slide</h1>
				<!-- START HOME PAGE BOTTOM SLIDER -->		
				<div class="group" id="home-slideshow">
				<!-- "previous slide" button -->
				<a class="home-slide-backward">back</a> 
				<!-- container for the slides -->
					<div class="home-slide-images">
                    
					<!-- first slide -->	
						<cfset homeslidelower1 = application.apiv1.sectionsapi.getContentSection("Home Slide Lower 1")>
						<cfoutput>
						<cfif isDefined("homeslidelower1.query.content")>#homeslidelower1.query.content#</cfif>
						</cfoutput>

						<!-- second slide -->
						<cfset homeslidelower2 = application.apiv1.sectionsapi.getContentSection("Home Slide Lower 2")>
						<cfoutput>
						<cfif isDefined("homeslidelower2.query.content")>#homeslidelower2.query.content#</cfif>
						</cfoutput>

						<!-- third slide -->
						<cfset homeslidelower3 = application.apiv1.sectionsapi.getContentSection("Home Slide Lower 3")>
						<cfoutput>
						<cfif isDefined("homeslidelower3.query.content")>#homeslidelower3.query.content#</cfif>
						</cfoutput>

						<!-- fourth slide -->
						<cfset homeslidelower4 = application.apiv1.sectionsapi.getContentSection("Home Slide Lower 4")>
						<cfoutput>
						<cfif isDefined("homeslidelower4.query.content")>#homeslidelower4.query.content#</cfif>
						</cfoutput>
            
                        
					</div>
					<!-- "next slide" button -->			
					<a class="home-slide-forward">forward</a>
                    <!-- the tabs -->
					<div class="home-slide-tabs"><a class="current" href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a></div>
				</div>
				<!--/END -->	
			</div>
			<!-- /END LOWER SLIDES CONTAINER -->
			<!-- START GENERAL CONTENT / PROMO CONTAINER -->
			<div class="hm_generalContent">
				<cfset generalcontent = application.apiv1.sectionsapi.getContentSection("General Content")>
				<cfoutput>
				<cfif isDefined("generalcontent.query.content")>#generalcontent.query.content#</cfif>
				</cfoutput>
			</div>
			<!-- /END GENERAL CONTENT / PROMO CONTAINER -->
			<br style="clear:both" />
				&nbsp;</div>
		<!-- /END HOME FEATURES CONTAINER -->
		<!-- START QUOTES CONTAINER -->
		<div class="quotesContainer">
			<cfset quotes = application.apiv1.sectionsapi.getContentSection("Quotes")>
			<cfoutput>
			<cfif isDefined("quotes.query.content")>#quotes.query.content#</cfif>
			</cfoutput>
		</div>
		<!-- /END QUOTES CONTAINER -->
		</cfif>
		
					