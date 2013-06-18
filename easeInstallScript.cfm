<!--- This script installs the content sections into CE for use by the slide show
	  in the Professinoal template --->
<!--- URL to run script:
http://www.domain.com/_data/n_0001/scripts/easeInstallScript.cfm?testmode=0&sections=1&pages=1&showerrors=1 
change testmode from 1 to 0 to run it. --->
<cfparam name="url.testmode" type="boolean" default="true">
<cfparam name="url.sections" type="boolean" default="false">
<cfparam name="url.pages" type="boolean" default="false">
<cfif url.testmode>
	TEST MODE ONLY - NO INSERTS INTO CE DB<br>
</cfif>
<!--- Install Slide Content Channels --->
<font size=5>Install Ease Theme Content Channels</font><br>
<br>

<!---                                                                    --->
<!---            CREATE QUERY FOR SECTIONS / CONTENT CHANNELS            --->
<!---                                                                    --->
<!--- Create a query and set its contents to insert sections / content channels. 
	  This includes the following sections:
	  1. 4 Main Slides
	  2. 4 Content Spotlights
	  3. 4 Lower Slides
	  4. General Content box
	  5. Quotes box
	  --->
<cfset sectioninstallquery = QueryNew( "sectiontitle, sectioncontent" ) />

		<!---                                                      --->
		<!---               ADD MAIN SLIDES TO QUERY               --->
		<!---                                                      --->
		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Home Slide 1" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div class='cs2_homeSlide'>
							<img alt='XX' class='cs2_slideImage' height='335' src='/_data/n_0001/images/hm_main_slide1.jpg' width='910' />
							<div class='cs2_homeSlideCopy'>
								<h2>
									Main Feat. Content Slide...</h2>
								<p class='quote'>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis urna vel mauris interdum consequat. tortor.<br />
									<a href='##'>Read more</a></p>
							</div>
						</div>" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Home Slide 2" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div class='cs2_homeSlide'>
							<img alt='XX' class='cs2_slideImage' height='335' src='/_data/n_0001/images/hm_main_slide2.jpg' width='910' />
							<div class='cs2_homeSlideCopy'>
								<h2>
									Main Feat. Content Slide...</h2>
								<p class='quote'>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis urna vel mauris interdum consequat. tortor.<br />
									<a href='##'>Read more</a></p>
							</div>
						</div>" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Home Slide 3" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div class='cs2_homeSlide'>
							<img alt='XX' class='cs2_slideImage' height='335' src='/_data/n_0001/images/hm_main_slide3.jpg' width='910' />
							<div class='cs2_homeSlideCopy'>
								<h2>
									Main Feat. Content Slide...</h2>
								<p class='quote'>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis urna vel mauris interdum consequat. tortor.<br />
									<a href='##'>Read more</a></p>
							</div>
						</div>" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Home Slide 4" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div class='cs2_homeSlide'>
							<img alt='XX' class='cs2_slideImage' height='335' src='/_data/n_0001/images/hm_main_slide4.jpg' width='910' />
							<div class='cs2_homeSlideCopy'>
								<h2>
									Main Feat. Content Slide...</h2>
								<p class='quote'>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis urna vel mauris interdum consequat. tortor.<br />
									<a href='##'>Read more</a></p>
							</div>
						</div>" ) />

		<!---                                                            --->
		<!---               ADD CONTENT SPOTLIGHT TO QUERY               --->
		<!---                                                            --->
		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Content Spotlight 1" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div class='hm_highlightbox'>
					<h2 class='hmHighlightBoxTitle'>
						Content Spotlight 1</h2>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac massa elit, nec sagittis eros. Maecenas massa neque, hendrerit id fringilla vel, interdum quis tellus. Duis ac massa elit, nec sagittis eros. <a href='##'><br />
					More</a></div>")/>

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Content Spotlight 2" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div class='hm_highlightbox'>
					<h2 class='hmHighlightBoxTitle'>
						Content Spotlight 2</h2>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac massa elit, nec sagittis eros. Maecenas massa neque, hendrerit id fringilla vel, interdum quis tellus. Duis ac massa elit, nec sagittis eros. <a href='##'><br />
					More</a></div>")/>

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Content Spotlight 3" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div class='hm_highlightbox'>
					<h2 class='hmHighlightBoxTitle'>
						Content Spotlight 3</h2>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac massa elit, nec sagittis eros. Maecenas massa neque, hendrerit id fringilla vel, interdum quis tellus. Duis ac massa elit, nec sagittis eros. <a href='##'><br />
					More</a></div>")/>

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Content Spotlight 4" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div class='hm_highlightbox'>
					<h2 class='hmHighlightBoxTitle'>
						Content Spotlight 4</h2>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac massa elit, nec sagittis eros. Maecenas massa neque, hendrerit id fringilla vel, interdum quis tellus. Duis ac massa elit, nec sagittis eros. <a href='##'><br />
					More</a></div>")/>

		<!---                                                       --->
		<!---               ADD LOWER SLIDES TO QUERY               --->
		<!---                                                       --->
		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Home Slide Lower 1" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div>
			<h1 class='screen-reader-text'>
				text here</h1>
			<p class='screen-reader-text'>
				text here</p>
			<a href='##' title=''><img height='270' src='../_data/n_0001/images/hm_slide_lower1.jpg' width='376' /></a></div>" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Home Slide Lower 2" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div>
			<h1 class='screen-reader-text'>
				text here</h1>
			<p class='screen-reader-text'>
				text here</p>
			<a href='##' title=''><img height='270' src='../_data/n_0001/images/hm_slide_lower2.jpg' width='376' /></a></div>" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Home Slide Lower 3" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div>
			<h1 class='screen-reader-text'>
				text here</h1>
			<p class='screen-reader-text'>
				text here</p>
			<a href='##' title=''><img height='270' src='../_data/n_0001/images/hm_slide_lower3.jpg' width='376' /></a></div>" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Home Slide Lower 4" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<div>
			<h1 class='screen-reader-text'>
				text here</h1>
			<p class='screen-reader-text'>
				text here</p>
			<a href='##' title=''><img height='270' src='../_data/n_0001/images/hm_slide_lower4.jpg' width='376' /></a></div>" ) />

		<!---                                                          --->
		<!---               ADD GENERAL CONTENT TO QUERY               --->
		<!---                                                          --->
		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "General Content" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<h1 class='hmContentTitle'>
					Lorem ipsum dolor sit amet consectetur</h1>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis urna vel mauris interdum consequat. Quisque augue tortor, lacinia ut pulvinar ut, sollicitudin ut tortor. Fusce eget nisi at enim ultricies cursus. Nunc sit amet nisl ante. Pellentesque vitae metus purus. Mauris interdum, felis ac feugiat pulvinar. velit orci laoreet velit, quis faucibus mauris ante eu magna. Fusce id gravida eros. Nunc leo orci, condimentum fermentum convallis vel, dictum eget velit.<br />
				<br />
				<div class='promoBoxHm'>
					<img height='123' src='/_data/n_0001/images/promo_box.png' width='500' /></div>" ) />

		<!---                                                          --->
		<!---               ADD QUOTES CONTENT TO QUERY                --->
		<!---                                                          --->
		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Quotes" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<h2 class='hmContentTitle'>
				What Our Clients Say</h2>
			<div class='quoteImg'>
				<img height='112' src='/_data/n_0001/images/quotes.png' width='129' /></div>
			<div class='clientQuotes'>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis urna vel mauris interdum consequat. Quisque augue tortor, lacinia ut pulvinar ut, sollicitudin ut tortor. Fusce eget nisi at enim ultricies cursus. Nunc sit amet nisl ante. Pellentesque vitae metus purus. Mauris dum.<br />
				<strong>- felis ac feugiat pulvinar</strong></div>" ) />

<!---                                                          --->
<!---            INSERT SECTIONS / CONTENT CHANNELS            --->
<!---                                                          --->
<cfoutput query="sectioninstallquery">

	<!--- Checks for existance of page so that duplicates are not accidentally imported. --->
	<cfquery name="dupecheck" datasource="#request.dsn#">
		SELECT title
		FROM contentT
		WHERE title = <cfqueryparam value="#sectioninstallquery.sectiontitle#" cfsqltype="CF_SQL_VARCHAR">
	</cfquery>

	<cfif NOT dupecheck.recordcount>
	<!--- write to db --->
		<cfif NOT url.testmode and url.sections EQ 1>
			<cfquery name="insertcontentchannels" datasource="#request.dsn#">
				INSERT INTO contentT (
					title
					,content
					,createdate
					)
				VALUES (
					<cfqueryparam value="#sectioninstallquery.sectiontitle#" cfsqltype="CF_SQL_VARCHAR">
					,<cfqueryparam value="#sectioninstallquery.sectioncontent#" cfsqltype="CF_SQL_VARCHAR">
					,#CreateODBCDateTime(now())#
					)
			</cfquery>
		</cfif>
	</cfif>
</cfoutput>

<!---                                              --->
<!---            CREATE QUERY FOR PAGES            --->
<!---                                              --->
<cfset pageinstallquery = QueryNew( "pagetitle, pagenavtitle, pagecontent" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "About" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "About" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "About Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Services" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Services" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Services Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "News" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "News" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "News Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Events" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Events" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Events Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Resources" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Resources" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Resources Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Programs" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Programs" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Programs Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Join" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Join" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Join Page Content" ) />

	<!--- Get Page Template --->
	<cfquery name="getpagetemplateid" datasource="#request.dsn#">
		SELECT pagetemplateid
		FROM pagetemplate
		WHERE name = <cfqueryparam value="div_c1" cfsqltype="CF_SQL_VARCHAR">
	</cfquery>

<!--- Insert to the Destination DB --->
<cfoutput query="pageinstallquery">

	<!--- Checks for existance of page so that duplicates are not accidentally imported. --->
	<cfquery name="dupecheck" datasource="#request.dsn#">
		SELECT pagetitle
		FROM page
		WHERE pagetitle = <cfqueryparam value="#pageinstallquery.pagetitle#" cfsqltype="CF_SQL_VARCHAR">
	</cfquery>

	<cfif NOT dupecheck.recordcount>
	<!--- Insert page info --->
		<cfif NOT url.testmode and url.pages EQ 1>
			<cfquery name="insertpage" datasource="#request.dsn#">
				INSERT INTO page(
					parentpageID,
					pagetemplateid,	
					nodeid,
					pageTitle,
					pageNavTitle,
					approvallevel,
					CreatorUserID,
					CreateDate
					)
				Values(
					4
					,<cfqueryparam value="#getpagetemplateid.pagetemplateid#" cfsqltype="CF_SQL_VARCHAR">
					,1
					,<cfqueryparam value="#pageinstallquery.pagetitle#" cfsqltype="CF_SQL_VARCHAR">
					,<cfqueryparam value="#pageinstallquery.pagenavtitle#" cfsqltype="CF_SQL_VARCHAR">
					,4
					,4295
					,#CreateODBCDateTime(now())#
					)
				SELECT @@IDENTITY pageID
			</cfquery>
			
			<!--- Insert page content --->
			<cfquery name="insertpagecontent" datasource="#request.dsn#">			
				INSERT INTO PageContent
					(
					PageID,
					HTMLContent,
					TemplatePosition,
					CreatorUserID,
					CreateDate,
					ApplicationPK
					)
				VALUES 
					(
					<cfqueryparam value="#insertpage.pageid#" cfsqltype="CF_SQL_INTEGER">
					,<cfqueryparam value="#pageinstallquery.pagecontent#" cfsqltype="CF_SQL_VARCHAR">
					,'c1'
					,4295
					,#CreateODBCDateTime(now())#
					,0
					)
			</cfquery>
		</cfif>
	</cfif>
</cfoutput>
DONE!
