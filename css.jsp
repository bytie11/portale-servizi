





		body
{
	color: #333333;
	min-width: 400px;
	font-size: 9pt;
}

td.CenterBar
{
	padding: 0px;
}

/* styling generico */

a.logout
{
	margin-right: 5px;
	font-weight: bold;
}

/* contenitore widget */

div.widgetColumn
{
	padding-top: 0px;
	float: left;
}

div.widgetColumn#column_0
{
	float: right;
	/*background-color: #FFFFE0;*/
}

div.widgetColumn div.horizontal-strut
{
	/*height: 0px;
	width: 400px;*/
}

div.widgetColumn div.vertical-strut
{
	float: left;
	width: 0px;
	height: 768px;
	/*border: 1px solid magenta;
	margin: 0px -2px;*/
}

/*div.horizontal-strut
{
	width: 350px;
	height: 0px;
	border: 1px solid cyan;
	margin: -2px 0px;
}*/

div.wrapperColonne
{
/* 	background: green; */
	min-height:10px;
	margin: 0px auto;
}

div#portale-noty-container
{
	padding: 0px 25px;
}

#switchToMobile {
	display: none;
}

@media (max-width: 800px)
{
	div.widgetColumn/*,
	div.colonnaServizi*/
	{
		width: 100%;
		min-width: 400px;
		/*width: 350px;*/
		/*background-color: #E0E0FF;*/
	}

	div.vertical-strut
	{
		display: none;
	}

	div.wrapperColonne,
	div#portale-noty-container
	{
		width: 400px;
	}

	div#portale-optout
	{
		width: 375px;
	}

	#switchToMobile {
		display: block;
	}

}

@media (min-width: 801px) and (max-width: 1200px)
{
	div.widgetColumn/*,
	div.colonnaServizi*/
	{
		width: 50%;
		/*min-width: 50%;*/
		/*background-color: #FFFFE0;*/
	}

	div.wrapperColonne,
	div#portale-noty-container
	{
		padding: 0px;
		width: 770px;
	}

	div#portale-optout
	{
		width: 770px;
	}

	div#column_1 div.vertical-strut,
	div#column_2 div.vertical-strut
	{
		display:none;
	}

	/*div.horizontal-strut
	{
		display: none;
	}*/

}

/* @media (min-width: 1201px) and (max-width: 1560px) */
@media (min-width: 1201px)
{
	div.widgetColumn/*,
	div.colonnaServizi*/
	{
		width: 386px;
	}

	#column_0
	{
		/*min-width: 386px;*/
		width: calc(100% - 772px);
		max-width: 700px;
	}


	div.wrapperColonne,
	div#portale-noty-container
	{
		padding: 0px;
		width: 1170px;
	}

	div.wrapperColonne
	{
		width: 100%;
		min-width: 1170px;
		max-width: 1472px;
	}

	div#portale-optout
	{
		width: 1170px;
	}

	/*div.horizontal-strut
	{
		display: none;
	}*/

}

div.widgetFrame
{
	/*border: solid 2px #666666;*/
	margin: 5px 5px 0px 5px;
/* 	padding: 0px; */
	padding: 10px 5px 10px 5px;
	/* avoid unpleasing artefacts during load or size changes */
	/* disabilitato causa bug(?) w3c: stackoverflow.com/questions/6421966
	 * altrimenti clippiamo i widget in orizzontale, e ciò è male in caso di
	 * contenuto poco "collaborativo"
	 */
	/*overflow-y: hidden;*/
	overflow-x: auto;
}

div.widgetTitleBar
{
	margin: 0px;
	/*padding: 7px;
	border-bottom: solid 2px #666666;
	text-align: center;*/
	position: relative;
}

/*div.widgetTitleBar span.title
{
	display: none;
	font-weight: bold;
	font-size: 133%;
}*/

div.widgetFrame > table > tbody > tr > .TitleInfoCard
{
	font-size: 125%;
	padding: 0.33em 0.67em;
}

div.widgetFrame > table.BoxInfoCard > tbody > tr > td
{
	background-color: white;
}

div.widgetControls
{
	position: absolute;
	right: 4px;
	bottom: 5px;
}

div.widgetControls a
{
	/*display: inline-block;*/
	display: none;
	cursor: pointer;
	position: relative;
	width: 20px;
	height: 20px;
}

/*div.widgetControls a.expand,
div.widgetControls a.collapse
{
	display: none;
}*/

div.widgetControls a img
{
	width: 18px;
	position: relative;
}

div.widgetControls a:hover img
{
	width: 24px;
	left: -2px;
}

div.widgetControls a:hover
{
	/*width: 24px;*/
	/*background-color: #CCCCCC;*/
}

div.widgetBody div.placeholder
{
	padding: 48px;
}

div.widgetBodyContainer
{
	position: relative;
}

div.widgetBodyContainer div.widgetBody
{
	padding: 0px;
}

/*div.widgetBodyContainer div.widgetContent
{
	padding: 10px 0px;
}*/

div.widgetFrame > table.BoxInfoCard > tbody > tr > td.ElementInfoCard2
{
	padding: 0px;
}

div.widgetBodyContainer>div.loading
{
	display: none;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

div.widgetBodyContainer>div.mask
{
	/*background: rgba(196,196,196,0.66);*/
	background: transparent;
}

div.widgetBodyContainer>div.icon.working
{
	background: transparent url('../images/loading.gif') no-repeat center center;
}

div.widgetBodyContainer>div.icon.broken
{
	pointer-events:none;
	background: transparent url('../images/broken.png') no-repeat center center;
}

.clear
{
	clear: both;
}

div#portale-optout,
div.noty_message
{
	position: relative;
}

div#portale-optout
{
	margin: 20px auto 0px auto;
	text-align: center;
}

div#portale-optout p
{
	margin: 2px 0px;
}

div#portale-optout .close,
div.noty_message .close
{
	display: block;
	position: absolute;
	padding: 1px;
	width: 18px;
	border: none;
	cursor: pointer;

	/* bordo bianco rotondo di qualche pixel */
	background: url('../icons/white_circle.png') no-repeat center center;
	background-size: contain;
}

div#portale-optout .close:hover,
div.noty_message .close:hover
{
	width: 24px;
}

div#portale-optout .close
{
	top: -4px;
	right: -4px;
}

div#portale-optout .close:hover
{
	top: -5px;
	right: -5px;
}

/*ul.noty_inline_layout_container > li
{
	overflow: visible !important;
}*/

/* spazio per "overflow" dell'icona di chiusura */
div.noty_message
{
	margin-left: 10px;
	margin-right: 10px;
}

div.noty_message .close
{
	top: 8px;
	right: -4px;
}

div.noty_message .close:hover
{
	top: 7px;
	right: -5px;
}


/*
a.ps_userinfo
{
	text-decoration: none;
	display: inline-block; /* altrimenti almeno in ff rimane largo come tutta la cella * /
}


div#ps_userinfo > div
{
	display: inline-block;
	vertical-align: middle;
}

div#ps_userinfo .usericon,
div#ps_userinfo .usericon img
{
	height: 36px;
	border: none;
}
*/


/*.widgetFrame {
	box-shadow: 5px 10px 10px #6b9ac1;
}*/


.widgetContent > .Message{
	margin: 0;
	padding: 1em ;
}

.widgetFrame:HOVER > table.BoxInfoCard,
.widgetFrame:HOVER > table.BodyInfoCard
{
	box-shadow: 2px 5px 6px 0px rgba(20,20,20,0.2);
/* 	box-shadow: 2px 5px 6px 0 rgba(0, 102, 153, 0.5); */
  	transition: 'all';
 	transition-duration: 200ms;
}

.widgetFrame > table.BoxInfoCard,
.widgetFrame > table.BodyInfoCard {
  	transition: 'all   ';
 	transition-duration: 300ms;
}

.widgetFrame .Message .TitleInfoCard {
	display: none;
}

.srvTooltip div,
.portaleTooltip div {
    max-width: 500px;
}

/* omogeneità link */
div.widgetFrame a
{
	text-decoration: none;
}
div.widgetFrame a:hover
{
	text-decoration: underline;
}


.logo-polimi{
	border: 0px;
}

#ps_userinfo .link-LogOut {
	margin-right: 0;
}
	


/* servizi/css/servizi.css */

		/**
 * CSS per i widget servizi (tutti i servizi / preferiti)
 */
 
 #it_polimi_widget_preferiti,
 #it_polimi_widget_servizi
 {
 	padding: 5px 13px 13px 15px;
 }

 div.cercaServizio
 {
	width: 100%;
	border-bottom: 1px solid #CCCCCC;
	padding: 10px 0px;
	text-align: right;
 }

 .searchActive div.cercaServizio .icon
 {
 	display: block;
 }

 div.cercaServizio .icon
 {
 	display: none;
	width: 5%;
 	float: right;
 	margin-right: 2px;
 	/*margin-left: 5px;*/
 }

 div.cercaServizio .icon a
 {
  	padding: 3px;
 	display: inline-block;
 }

 div.cercaServizio .icon a img
 {
 	display: none;
 }

 .searchActive div.cercaServizio .icon a
 {
  	cursor: pointer;
 }

 .searchActive div.cercaServizio .icon a img
 {
 	display: inline-block;
 }

 .searchActive  div.cercaServizio .input
 {
 	width: 90%;	
 }

 div.cercaServizio .input
 {
 	float: left;
 	width: 99%;
 }
 
 

 div.cercaServizio .input input
 {
 	width: 100%
 }

 div.cercaServizio .label
 {
 	float: left;
 	font-weight: bold;
 	/*margin-top: 3px;*/
 	font-size: 125%;
 }

 /**
  * styling elenco servizi
  */

 ul.elencoServizi
 {
   	list-style-type: none;
 	padding: 0px;
 	margin: 0px;
 	/*font-weight: bold;*/
 }
 

 ul.elencoServizi a:hover
 {
 	text-decoration: underline;
 }
 
 ul.elencoServizi a
 {
 	text-decoration: none;
 }

 li.srvSection > .label
 {
 	font-size: 125%;
 	font-weight: bold;
 	display: flex;
 }
 
 .sectionLabel > .text {
 	flex-grow: 2;
 }

 li.srvSection .toggle
 {
 	display: block;
 	color: #006699;
 }

 /*ul.elencoServizi > li*/
 li.srvSection,
 li.srvService
 {
 	padding: 5px 0px 0px 0px;
 	/*border-bottom: 1px solid #808080;*/
 }

 li.srvService div.label
 {
 	padding-left: 1em;
 }

 ul.elencoServizi div.bottomLine
 {
 	width: 100%;
 	clear: both;
 	margin-top: 10px;
 	border-bottom: 1px solid #CCCCCC;
 }


 ul.elencoServizi.fav > li
 {
 	padding-top: 0px;
 }


 ul.elencoServizi ul
 {
 	list-style-type: none;
 	padding: 0px;
 	margin: 0px;
 	/*margin-top: 10px;*/
 	font-weight: normal;
 }

 ul.elencoServizi.fav ul
 {
 	margin-top: 0px;
 }

 ul.elencoServizi li li div.label
 {
 	margin-left: 10px;
 	display: flex;
 }

 ul.elencoServizi li.collapsed ul
 {
 	display: none;
 }

 /**
  * styling icone
  */

 ul.elencoServizi .icons
 {
 	display: flex;
 	justify-content: flex-end;
 	/*margin-left: 10px;*/
 	vertical-align: top;
 	justify-self: right;
 }
 
 ul.elencoServizi .srvService .text
 {
 	flex-grow: 5;
 }
 

 ul.elencoServizi .icons a img,
 ul.elencoServizi .icons span img,
 div.cercaServizio .icon a img
 {
 	width: 18px;
 	float: right;
 	border: none;
 	position: relative;
 }
 
  ul.elencoServizi .icons .info_website_box img {
 	position: initial;
 }

 ul.elencoServizi .icons a:hover img,
 div.cercaServizio .icon a:hover img
 {
 	width: 24px;
 	top: -2px;
 	right: -2px;
 }

 ul.elencoServizi .icons a
 {
	display: none;
 }
 
.info_website_box {
	display: inline-block;
    min-width: 20px;
    text-align: center;
}
 ul.elencoServizi .icons a.info_website {
 	display: inline-block;
 }
 
 .info_website img {
 	top: 3px;
 }
 
 .info_website_box,
 .favourites_box {
 	margin: 0 6px;
 }

 div.cercaServizio.icon a
 {
 	display: inline-block;
 }

 ul.elencoServizi .icons a,
 div.cercaServizio .icon a
 {
 	width: 18px;
 	height: 18px;
 	overflow: visible;
 	position: relative;
 }

 /*ul.elencoServizi .icons a:hover,
 div.cercaServizio .icon a:hover
 {
	background-color: #CCCCCC;
 }*/

 ul.elencoServizi .collapsed .icons .expand,
 ul.elencoServizi .icons .collapse,
 ul.elencoServizi ul .icons .info,
 ul.elencoServizi ul .icons .fav_add,
 ul.elencoServizi ul .icons .no_widget,

 ul.elencoServizi ul .fav .fav_remove,
 ul.elencoServizi ul .wdg .widget_add,
 ul.elencoServizi ul .wdg_act .widget_remove
 {
	display: inline-block;
 }

 ul.elencoServizi .collapsed .icons .collapse,
 ul.elencoServizi .fixed .icons .collapse,
 ul.elencoServizi .fixed .icons .expand,
 ul.elencoServizi ul .fav .fav_add,
 ul.elencoServizi ul .wdg .no_widget,
 ul.elencoServizi ul .wdg_act .no_widget
 {
 	display: none;
 }
 
 /**
  * Tooltip in modo non-js
  */
  div[data-jaf-tooltip-class='srvTooltip']
  {
  	padding-top: 0.4em;
  	padding-left: 0.75em;
  	font-size: 8.5pt;
  }

 /**
  * Ricerca servizi
  */

 ul.elencoServizi > li.searchResults ul
 {
 	margin-top: 0px;
 }

 ul.elencoServizi > li.searchResults li:first-child
 {
 	border-top: none;
 }

 ul.elencoServizi > li.searchResults
 /*.searchActive ul.elencoServizi > li*/
 {
 	display: none;
 }

 .searchActive ul.elencoServizi > li.searchResults
 {

 	/*display: initial; --> col cappero che funziona in IE8 */
 	display: block;
 }

 .searchActive div.cercaServizio .input input
 {
 	/*background-color: #FFFFE0;*/
 	background-color: lightyellow;
 }

 .searchActive ul.elencoServizi .srvSection .icons a.collapse,
 .searchActive ul.elencoServizi .srvSection .icons a.expand
 {
 	display: none;
 }

 .searchResults .nothing
 {
 	font-weight: normal;
 	text-align: center;
 	font-size: 125%;
 	font-style: italic;
 	padding-top: 10px;
 }

div.nessun_servizio
{
	font-style: italic;
	text-align: center;
	font-size: 125%;
}

.fav_help,
.srv_help
{
	padding-top: 10px;
}

.fav_help p,
.srv_help p
{
	margin-top: 0px;
	margin-bottom: 1em;
}

.fav_help img,
.srv_help img
{
	width: 18px;
	vertical-align: bottom;
}

div.fav_yes
{
	margin: 0px;
	padding: 0px;
	border-bottom: 1px solid #CCCCCC;
}

div.fav_no,
div.collapsed-message
{
	padding-top: 5px;
}

.srvService:hover
{
	/*background-color: #fff68f;*/
	background-color: lightyellow;
}

/** drag preferiti **/


 ul.elencoServizi .drag
 {
 	display: none;
 }

 ul.elencoServizi.fav .ui-sortable li
 {
 	cursor: url(/portaleservizi/portale/container/icons/cursors/openhand.cur), move;
 }
 
 ul.elencoServizi.fav .ui-sortable li .drag
 {
 	visibility: hidden;
 	/*opacity: 0;*/
 	display: block;
 	float: left;
 	/*transition: visibility 0s linear 0.5s, opacity 0.25s linear;*/
 }

 ul.elencoServizi.fav .ui-sortable li:hover .drag
 {
 	visibility: visible;
 	/*opacity: 1;*/
 	/*transition-delay: 0s;*/
 }
 
 /** ????? **/
 
div.fav_yes
{
	margin: 0px;
	padding: 0px;
	border-bottom: 0px none #ffffff;
}

.elencoServizi.fav .srvService:nth-last-child(1) div.bottomLine
{
	margin: 0px;
	padding: 0px;
	border-bottom: 0px none #ffffff;
}

	
