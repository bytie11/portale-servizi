

/* container/js/respond.min.js */
/*! Respond.js v1.4.2: min/max-width media query polyfill
 * Copyright 2014 Scott Jehl
 * Licensed under MIT
 * http://j.mp/respondjs */

!function(a){"use strict";a.matchMedia=a.matchMedia||function(a){var b,c=a.documentElement,d=c.firstElementChild||c.firstChild,e=a.createElement("body"),f=a.createElement("div");return f.id="mq-test-1",f.style.cssText="position:absolute;top:-100em",e.style.background="none",e.appendChild(f),function(a){return f.innerHTML='&shy;<style media="'+a+'"> #mq-test-1 { width: 42px; }</style>',c.insertBefore(e,d),b=42===f.offsetWidth,c.removeChild(e),{matches:b,media:a}}}(a.document)}(this),function(a){"use strict";function b(){v(!0)}var c={};a.respond=c,c.update=function(){};var d=[],e=function(){var b=!1;try{b=new a.XMLHttpRequest}catch(c){b=new a.ActiveXObject("Microsoft.XMLHTTP")}return function(){return b}}(),f=function(a,b){var c=e();c&&(c.open("GET",a,!0),c.onreadystatechange=function(){4!==c.readyState||200!==c.status&&304!==c.status||b(c.responseText)},4!==c.readyState&&c.send(null))},g=function(a){return a.replace(c.regex.minmaxwh,"").match(c.regex.other)};if(c.ajax=f,c.queue=d,c.unsupportedmq=g,c.regex={media:/@media[^\{]+\{([^\{\}]*\{[^\}\{]*\})+/gi,keyframes:/@(?:\-(?:o|moz|webkit)\-)?keyframes[^\{]+\{(?:[^\{\}]*\{[^\}\{]*\})+[^\}]*\}/gi,comments:/\/\*[^*]*\*+([^/][^*]*\*+)*\//gi,urls:/(url\()['"]?([^\/\)'"][^:\)'"]+)['"]?(\))/g,findStyles:/@media *([^\{]+)\{([\S\s]+?)$/,only:/(only\s+)?([a-zA-Z]+)\s?/,minw:/\(\s*min\-width\s*:\s*(\s*[0-9\.]+)(px|em)\s*\)/,maxw:/\(\s*max\-width\s*:\s*(\s*[0-9\.]+)(px|em)\s*\)/,minmaxwh:/\(\s*m(in|ax)\-(height|width)\s*:\s*(\s*[0-9\.]+)(px|em)\s*\)/gi,other:/\([^\)]*\)/g},c.mediaQueriesSupported=a.matchMedia&&null!==a.matchMedia("only all")&&a.matchMedia("only all").matches,!c.mediaQueriesSupported){var h,i,j,k=a.document,l=k.documentElement,m=[],n=[],o=[],p={},q=30,r=k.getElementsByTagName("head")[0]||l,s=k.getElementsByTagName("base")[0],t=r.getElementsByTagName("link"),u=function(){var a,b=k.createElement("div"),c=k.body,d=l.style.fontSize,e=c&&c.style.fontSize,f=!1;return b.style.cssText="position:absolute;font-size:1em;width:1em",c||(c=f=k.createElement("body"),c.style.background="none"),l.style.fontSize="100%",c.style.fontSize="100%",c.appendChild(b),f&&l.insertBefore(c,l.firstChild),a=b.offsetWidth,f?l.removeChild(c):c.removeChild(b),l.style.fontSize=d,e&&(c.style.fontSize=e),a=j=parseFloat(a)},v=function(b){var c="clientWidth",d=l[c],e="CSS1Compat"===k.compatMode&&d||k.body[c]||d,f={},g=t[t.length-1],p=(new Date).getTime();if(b&&h&&q>p-h)return a.clearTimeout(i),i=a.setTimeout(v,q),void 0;h=p;for(var s in m)if(m.hasOwnProperty(s)){var w=m[s],x=w.minw,y=w.maxw,z=null===x,A=null===y,B="em";x&&(x=parseFloat(x)*(x.indexOf(B)>-1?j||u():1)),y&&(y=parseFloat(y)*(y.indexOf(B)>-1?j||u():1)),w.hasquery&&(z&&A||!(z||e>=x)||!(A||y>=e))||(f[w.media]||(f[w.media]=[]),f[w.media].push(n[w.rules]))}for(var C in o)o.hasOwnProperty(C)&&o[C]&&o[C].parentNode===r&&r.removeChild(o[C]);o.length=0;for(var D in f)if(f.hasOwnProperty(D)){var E=k.createElement("style"),F=f[D].join("\n");E.type="text/css",E.media=D,r.insertBefore(E,g.nextSibling),E.styleSheet?E.styleSheet.cssText=F:E.appendChild(k.createTextNode(F)),o.push(E)}},w=function(a,b,d){var e=a.replace(c.regex.comments,"").replace(c.regex.keyframes,"").match(c.regex.media),f=e&&e.length||0;b=b.substring(0,b.lastIndexOf("/"));var h=function(a){return a.replace(c.regex.urls,"$1"+b+"$2$3")},i=!f&&d;b.length&&(b+="/"),i&&(f=1);for(var j=0;f>j;j++){var k,l,o,p;i?(k=d,n.push(h(a))):(k=e[j].match(c.regex.findStyles)&&RegExp.$1,n.push(RegExp.$2&&h(RegExp.$2))),o=k.split(","),p=o.length;for(var q=0;p>q;q++)l=o[q],g(l)||m.push({media:l.split("(")[0].match(c.regex.only)&&RegExp.$2||"all",rules:n.length-1,hasquery:l.indexOf("(")>-1,minw:l.match(c.regex.minw)&&parseFloat(RegExp.$1)+(RegExp.$2||""),maxw:l.match(c.regex.maxw)&&parseFloat(RegExp.$1)+(RegExp.$2||"")})}v()},x=function(){if(d.length){var b=d.shift();f(b.href,function(c){w(c,b.href,b.media),p[b.href]=!0,a.setTimeout(function(){x()},0)})}},y=function(){for(var b=0;b<t.length;b++){var c=t[b],e=c.href,f=c.media,g=c.rel&&"stylesheet"===c.rel.toLowerCase();e&&g&&!p[e]&&(c.styleSheet&&c.styleSheet.rawCssText?(w(c.styleSheet.rawCssText,e,f),p[e]=!0):(!/^([a-zA-Z:]*\/\/)/.test(e)&&!s||e.replace(RegExp.$1,"").split("/")[0]===a.location.host)&&("//"===e.substring(0,2)&&(e=a.location.protocol+e),d.push({href:e,media:f})))}x()};y(),c.update=y,c.getEmValue=u,a.addEventListener?a.addEventListener("resize",b,!1):a.attachEvent&&a.attachEvent("onresize",b)}}(this);

/* container/js/jquery.noty.packaged.min.js */
"function"!=typeof Object.create&&(Object.create=function(a){function b(){}return b.prototype=a,new b}),function(a){var b={init:function(b){return this.options=a.extend({},a.noty.defaults,b),this.options.layout=this.options.custom?a.noty.layouts.inline:a.noty.layouts[this.options.layout],a.noty.themes[this.options.theme]?this.options.theme=a.noty.themes[this.options.theme]:b.themeClassName=this.options.theme,delete b.layout,delete b.theme,this.options=a.extend({},this.options,this.options.layout.options),this.options.id="noty_"+(new Date).getTime()*Math.floor(1e6*Math.random()),this.options=a.extend({},this.options,b),this._build(),this},_build:function(){var b=a('<div class="noty_bar noty_type_'+this.options.type+'"></div>').attr("id",this.options.id);if(b.append(this.options.template).find(".noty_text").html(this.options.text),this.$bar=null!==this.options.layout.parent.object?a(this.options.layout.parent.object).css(this.options.layout.parent.css).append(b):b,this.options.themeClassName&&this.$bar.addClass(this.options.themeClassName).addClass("noty_container_type_"+this.options.type),this.options.buttons){this.options.closeWith=[],this.options.timeout=!1;var c=a("<div/>").addClass("noty_buttons");null!==this.options.layout.parent.object?this.$bar.find(".noty_bar").append(c):this.$bar.append(c);var d=this;a.each(this.options.buttons,function(b,c){var e=a("<button/>").addClass(c.addClass?c.addClass:"gray").html(c.text).attr("id",c.id?c.id:"button-"+b).appendTo(d.$bar.find(".noty_buttons")).bind("click",function(){a.isFunction(c.onClick)&&c.onClick.call(e,d)})})}this.$message=this.$bar.find(".noty_message"),this.$closeButton=this.$bar.find(".noty_close"),this.$buttons=this.$bar.find(".noty_buttons"),a.noty.store[this.options.id]=this},show:function(){var b=this;return b.options.custom?b.options.custom.find(b.options.layout.container.selector).append(b.$bar):a(b.options.layout.container.selector).append(b.$bar),b.options.theme&&b.options.theme.style&&b.options.theme.style.apply(b),"function"===a.type(b.options.layout.css)?this.options.layout.css.apply(b.$bar):b.$bar.css(this.options.layout.css||{}),b.$bar.addClass(b.options.layout.addClass),b.options.layout.container.style.apply(a(b.options.layout.container.selector)),b.showing=!0,b.options.theme&&b.options.theme.style&&b.options.theme.callback.onShow.apply(this),a.inArray("click",b.options.closeWith)>-1&&b.$bar.css("cursor","pointer").one("click",function(a){b.stopPropagation(a),b.options.callback.onCloseClick&&b.options.callback.onCloseClick.apply(b),b.close()}),a.inArray("hover",b.options.closeWith)>-1&&b.$bar.one("mouseenter",function(){b.close()}),a.inArray("button",b.options.closeWith)>-1&&b.$closeButton.one("click",function(a){b.stopPropagation(a),b.close()}),-1==a.inArray("button",b.options.closeWith)&&b.$closeButton.remove(),b.options.callback.onShow&&b.options.callback.onShow.apply(b),b.$bar.animate(b.options.animation.open,b.options.animation.speed,b.options.animation.easing,function(){b.options.callback.afterShow&&b.options.callback.afterShow.apply(b),b.showing=!1,b.shown=!0}),b.options.timeout&&b.$bar.delay(b.options.timeout).promise().done(function(){b.close()}),this},close:function(){if(!(this.closed||this.$bar&&this.$bar.hasClass("i-am-closing-now"))){var b=this;if(this.showing)return b.$bar.queue(function(){b.close.apply(b)}),void 0;if(!this.shown&&!this.showing){var c=[];return a.each(a.noty.queue,function(a,d){d.options.id!=b.options.id&&c.push(d)}),a.noty.queue=c,void 0}b.$bar.addClass("i-am-closing-now"),b.options.callback.onClose&&b.options.callback.onClose.apply(b),b.$bar.clearQueue().stop().animate(b.options.animation.close,b.options.animation.speed,b.options.animation.easing,function(){b.options.callback.afterClose&&b.options.callback.afterClose.apply(b)}).promise().done(function(){b.options.modal&&(a.notyRenderer.setModalCount(-1),0==a.notyRenderer.getModalCount()&&a(".noty_modal").fadeOut("fast",function(){a(this).remove()})),a.notyRenderer.setLayoutCountFor(b,-1),0==a.notyRenderer.getLayoutCountFor(b)&&a(b.options.layout.container.selector).remove(),"undefined"!=typeof b.$bar&&null!==b.$bar&&(b.$bar.remove(),b.$bar=null,b.closed=!0),delete a.noty.store[b.options.id],b.options.theme.callback&&b.options.theme.callback.onClose&&b.options.theme.callback.onClose.apply(b),b.options.dismissQueue||(a.noty.ontap=!0,a.notyRenderer.render()),b.options.maxVisible>0&&b.options.dismissQueue&&a.notyRenderer.render()})}},setText:function(a){return this.closed||(this.options.text=a,this.$bar.find(".noty_text").html(a)),this},setType:function(a){return this.closed||(this.options.type=a,this.options.theme.style.apply(this),this.options.theme.callback.onShow.apply(this)),this},setTimeout:function(a){if(!this.closed){var b=this;this.options.timeout=a,b.$bar.delay(b.options.timeout).promise().done(function(){b.close()})}return this},stopPropagation:function(a){a=a||window.event,"undefined"!=typeof a.stopPropagation?a.stopPropagation():a.cancelBubble=!0},closed:!1,showing:!1,shown:!1};a.notyRenderer={},a.notyRenderer.init=function(c){var d=Object.create(b).init(c);return d.options.killer&&a.noty.closeAll(),d.options.force?a.noty.queue.unshift(d):a.noty.queue.push(d),a.notyRenderer.render(),"object"==a.noty.returns?d:d.options.id},a.notyRenderer.render=function(){var b=a.noty.queue[0];"object"===a.type(b)?b.options.dismissQueue?b.options.maxVisible>0?a(b.options.layout.container.selector+" li").length<b.options.maxVisible&&a.notyRenderer.show(a.noty.queue.shift()):a.notyRenderer.show(a.noty.queue.shift()):a.noty.ontap&&(a.notyRenderer.show(a.noty.queue.shift()),a.noty.ontap=!1):a.noty.ontap=!0},a.notyRenderer.show=function(b){b.options.modal&&(a.notyRenderer.createModalFor(b),a.notyRenderer.setModalCount(1)),b.options.custom?0==b.options.custom.find(b.options.layout.container.selector).length?b.options.custom.append(a(b.options.layout.container.object).addClass("i-am-new")):b.options.custom.find(b.options.layout.container.selector).removeClass("i-am-new"):0==a(b.options.layout.container.selector).length?a("body").append(a(b.options.layout.container.object).addClass("i-am-new")):a(b.options.layout.container.selector).removeClass("i-am-new"),a.notyRenderer.setLayoutCountFor(b,1),b.show()},a.notyRenderer.createModalFor=function(b){if(0==a(".noty_modal").length){var c=a("<div/>").addClass("noty_modal").addClass(b.options.theme).data("noty_modal_count",0);b.options.theme.modal&&b.options.theme.modal.css&&c.css(b.options.theme.modal.css),c.prependTo(a("body")).fadeIn("fast")}},a.notyRenderer.getLayoutCountFor=function(b){return a(b.options.layout.container.selector).data("noty_layout_count")||0},a.notyRenderer.setLayoutCountFor=function(b,c){return a(b.options.layout.container.selector).data("noty_layout_count",a.notyRenderer.getLayoutCountFor(b)+c)},a.notyRenderer.getModalCount=function(){return a(".noty_modal").data("noty_modal_count")||0},a.notyRenderer.setModalCount=function(b){return a(".noty_modal").data("noty_modal_count",a.notyRenderer.getModalCount()+b)},a.fn.noty=function(b){return b.custom=a(this),a.notyRenderer.init(b)},a.noty={},a.noty.queue=[],a.noty.ontap=!0,a.noty.layouts={},a.noty.themes={},a.noty.returns="object",a.noty.store={},a.noty.get=function(b){return a.noty.store.hasOwnProperty(b)?a.noty.store[b]:!1},a.noty.close=function(b){return a.noty.get(b)?a.noty.get(b).close():!1},a.noty.setText=function(b,c){return a.noty.get(b)?a.noty.get(b).setText(c):!1},a.noty.setType=function(b,c){return a.noty.get(b)?a.noty.get(b).setType(c):!1},a.noty.clearQueue=function(){a.noty.queue=[]},a.noty.closeAll=function(){a.noty.clearQueue(),a.each(a.noty.store,function(a,b){b.close()})};var c=window.alert;a.noty.consumeAlert=function(b){window.alert=function(c){b?b.text=c:b={text:c},a.notyRenderer.init(b)}},a.noty.stopConsumeAlert=function(){window.alert=c},a.noty.defaults={layout:"top",theme:"defaultTheme",type:"alert",text:"",dismissQueue:!0,template:'<div class="noty_message"><span class="noty_text"></span><div class="noty_close"></div></div>',animation:{open:{height:"toggle"},close:{height:"toggle"},easing:"swing",speed:500},timeout:!1,force:!1,modal:!1,maxVisible:5,killer:!1,closeWith:["click"],callback:{onShow:function(){},afterShow:function(){},onClose:function(){},afterClose:function(){},onCloseClick:function(){}},buttons:!1},a(window).resize(function(){a.each(a.noty.layouts,function(b,c){c.container.style.apply(a(c.container.selector))})})}(jQuery),window.noty=function(a){return jQuery.notyRenderer.init(a)},function(a){a.noty.layouts.bottom={name:"bottom",options:{},container:{object:'<ul id="noty_bottom_layout_container" />',selector:"ul#noty_bottom_layout_container",style:function(){a(this).css({bottom:0,left:"5%",position:"fixed",width:"90%",height:"auto",margin:0,padding:0,listStyleType:"none",zIndex:9999999})}},parent:{object:"<li />",selector:"li",css:{}},css:{display:"none"},addClass:""}}(jQuery),function(a){a.noty.layouts.bottomCenter={name:"bottomCenter",options:{},container:{object:'<ul id="noty_bottomCenter_layout_container" />',selector:"ul#noty_bottomCenter_layout_container",style:function(){a(this).css({bottom:20,left:0,position:"fixed",width:"310px",height:"auto",margin:0,padding:0,listStyleType:"none",zIndex:1e7}),a(this).css({left:(a(window).width()-a(this).outerWidth(!1))/2+"px"})}},parent:{object:"<li />",selector:"li",css:{}},css:{display:"none",width:"310px"},addClass:""}}(jQuery),function(a){a.noty.layouts.bottomLeft={name:"bottomLeft",options:{},container:{object:'<ul id="noty_bottomLeft_layout_container" />',selector:"ul#noty_bottomLeft_layout_container",style:function(){a(this).css({bottom:20,left:20,position:"fixed",width:"310px",height:"auto",margin:0,padding:0,listStyleType:"none",zIndex:1e7}),window.innerWidth<600&&a(this).css({left:5})}},parent:{object:"<li />",selector:"li",css:{}},css:{display:"none",width:"310px"},addClass:""}}(jQuery),function(a){a.noty.layouts.bottomRight={name:"bottomRight",options:{},container:{object:'<ul id="noty_bottomRight_layout_container" />',selector:"ul#noty_bottomRight_layout_container",style:function(){a(this).css({bottom:20,right:20,position:"fixed",width:"310px",height:"auto",margin:0,padding:0,listStyleType:"none",zIndex:1e7}),window.innerWidth<600&&a(this).css({right:5})}},parent:{object:"<li />",selector:"li",css:{}},css:{display:"none",width:"310px"},addClass:""}}(jQuery),function(a){a.noty.layouts.center={name:"center",options:{},container:{object:'<ul id="noty_center_layout_container" />',selector:"ul#noty_center_layout_container",style:function(){a(this).css({position:"fixed",width:"310px",height:"auto",margin:0,padding:0,listStyleType:"none",zIndex:1e7});var b=a(this).clone().css({visibility:"hidden",display:"block",position:"absolute",top:0,left:0}).attr("id","dupe");a("body").append(b),b.find(".i-am-closing-now").remove(),b.find("li").css("display","block");var c=b.height();b.remove(),a(this).hasClass("i-am-new")?a(this).css({left:(a(window).width()-a(this).outerWidth(!1))/2+"px",top:(a(window).height()-c)/2+"px"}):a(this).animate({left:(a(window).width()-a(this).outerWidth(!1))/2+"px",top:(a(window).height()-c)/2+"px"},500)}},parent:{object:"<li />",selector:"li",css:{}},css:{display:"none",width:"310px"},addClass:""}}(jQuery),function(a){a.noty.layouts.centerLeft={name:"centerLeft",options:{},container:{object:'<ul id="noty_centerLeft_layout_container" />',selector:"ul#noty_centerLeft_layout_container",style:function(){a(this).css({left:20,position:"fixed",width:"310px",height:"auto",margin:0,padding:0,listStyleType:"none",zIndex:1e7});var b=a(this).clone().css({visibility:"hidden",display:"block",position:"absolute",top:0,left:0}).attr("id","dupe");a("body").append(b),b.find(".i-am-closing-now").remove(),b.find("li").css("display","block");var c=b.height();b.remove(),a(this).hasClass("i-am-new")?a(this).css({top:(a(window).height()-c)/2+"px"}):a(this).animate({top:(a(window).height()-c)/2+"px"},500),window.innerWidth<600&&a(this).css({left:5})}},parent:{object:"<li />",selector:"li",css:{}},css:{display:"none",width:"310px"},addClass:""}}(jQuery),function(a){a.noty.layouts.centerRight={name:"centerRight",options:{},container:{object:'<ul id="noty_centerRight_layout_container" />',selector:"ul#noty_centerRight_layout_container",style:function(){a(this).css({right:20,position:"fixed",width:"310px",height:"auto",margin:0,padding:0,listStyleType:"none",zIndex:1e7});var b=a(this).clone().css({visibility:"hidden",display:"block",position:"absolute",top:0,left:0}).attr("id","dupe");a("body").append(b),b.find(".i-am-closing-now").remove(),b.find("li").css("display","block");var c=b.height();b.remove(),a(this).hasClass("i-am-new")?a(this).css({top:(a(window).height()-c)/2+"px"}):a(this).animate({top:(a(window).height()-c)/2+"px"},500),window.innerWidth<600&&a(this).css({right:5})}},parent:{object:"<li />",selector:"li",css:{}},css:{display:"none",width:"310px"},addClass:""}}(jQuery),function(a){a.noty.layouts.inline={name:"inline",options:{},container:{object:'<ul class="noty_inline_layout_container" />',selector:"ul.noty_inline_layout_container",style:function(){a(this).css({width:"100%",height:"auto",margin:0,padding:0,listStyleType:"none",zIndex:9999999})}},parent:{object:"<li />",selector:"li",css:{}},css:{display:"none"},addClass:""}}(jQuery),function(a){a.noty.layouts.top={name:"top",options:{},container:{object:'<ul id="noty_top_layout_container" />',selector:"ul#noty_top_layout_container",style:function(){a(this).css({top:0,left:"5%",position:"fixed",width:"90%",height:"auto",margin:0,padding:0,listStyleType:"none",zIndex:9999999})}},parent:{object:"<li />",selector:"li",css:{}},css:{display:"none"},addClass:""}}(jQuery),function(a){a.noty.layouts.topCenter={name:"topCenter",options:{},container:{object:'<ul id="noty_topCenter_layout_container" />',selector:"ul#noty_topCenter_layout_container",style:function(){a(this).css({top:20,left:0,position:"fixed",width:"310px",height:"auto",margin:0,padding:0,listStyleType:"none",zIndex:1e7}),a(this).css({left:(a(window).width()-a(this).outerWidth(!1))/2+"px"})}},parent:{object:"<li />",selector:"li",css:{}},css:{display:"none",width:"310px"},addClass:""}}(jQuery),function(a){a.noty.layouts.topLeft={name:"topLeft",options:{},container:{object:'<ul id="noty_topLeft_layout_container" />',selector:"ul#noty_topLeft_layout_container",style:function(){a(this).css({top:20,left:20,position:"fixed",width:"310px",height:"auto",margin:0,padding:0,listStyleType:"none",zIndex:1e7}),window.innerWidth<600&&a(this).css({left:5})}},parent:{object:"<li />",selector:"li",css:{}},css:{display:"none",width:"310px"},addClass:""}}(jQuery),function(a){a.noty.layouts.topRight={name:"topRight",options:{},container:{object:'<ul id="noty_topRight_layout_container" />',selector:"ul#noty_topRight_layout_container",style:function(){a(this).css({top:20,right:20,position:"fixed",width:"310px",height:"auto",margin:0,padding:0,listStyleType:"none",zIndex:1e7}),window.innerWidth<600&&a(this).css({right:5})}},parent:{object:"<li />",selector:"li",css:{}},css:{display:"none",width:"310px"},addClass:""}}(jQuery),function(a){a.noty.themes.defaultTheme={name:"defaultTheme",helpers:{borderFix:function(){if(this.options.dismissQueue){var b=this.options.layout.container.selector+" "+this.options.layout.parent.selector;switch(this.options.layout.name){case"top":a(b).css({borderRadius:"0px 0px 0px 0px"}),a(b).last().css({borderRadius:"0px 0px 5px 5px"});break;case"topCenter":case"topLeft":case"topRight":case"bottomCenter":case"bottomLeft":case"bottomRight":case"center":case"centerLeft":case"centerRight":case"inline":a(b).css({borderRadius:"0px 0px 0px 0px"}),a(b).first().css({"border-top-left-radius":"5px","border-top-right-radius":"5px"}),a(b).last().css({"border-bottom-left-radius":"5px","border-bottom-right-radius":"5px"});break;case"bottom":a(b).css({borderRadius:"0px 0px 0px 0px"}),a(b).first().css({borderRadius:"5px 5px 0px 0px"})}}}},modal:{css:{position:"fixed",width:"100%",height:"100%",backgroundColor:"#000",zIndex:1e4,opacity:.6,display:"none",left:0,top:0}},style:function(){switch(this.$bar.css({overflow:"hidden",background:"url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABsAAAAoCAYAAAAPOoFWAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAPZJREFUeNq81tsOgjAMANB2ov7/7ypaN7IlIwi9rGuT8QSc9EIDAsAznxvY4pXPKr05RUE5MEVB+TyWfCEl9LZApYopCmo9C4FKSMtYoI8Bwv79aQJU4l6hXXCZrQbokJEksxHo9KMOgc6w1atHXM8K9DVC7FQnJ0i8iK3QooGgbnyKgMDygBWyYFZoqx4qS27KqLZJjA1D0jK6QJcYEQEiWv9PGkTsbqxQ8oT+ZtZB6AkdsJnQDnMoHXHLGKOgDYuCWmYhEERCI5gaamW0bnHdA3k2ltlIN+2qKRyCND0bhqSYCyTB3CAOc4WusBEIpkeBuPgJMAAX8Hs1NfqHRgAAAABJRU5ErkJggg==') repeat-x scroll left top #fff"}),this.$message.css({fontSize:"13px",lineHeight:"16px",textAlign:"center",padding:"8px 10px 9px",width:"auto",position:"relative"}),this.$closeButton.css({position:"absolute",top:4,right:4,width:10,height:10,background:"url(data:image/png;base64,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)",display:"none",cursor:"pointer"}),this.$buttons.css({padding:5,textAlign:"right",borderTop:"1px solid #ccc",backgroundColor:"#fff"}),this.$buttons.find("button").css({marginLeft:5}),this.$buttons.find("button:first").css({marginLeft:0}),this.$bar.bind({mouseenter:function(){a(this).find(".noty_close").stop().fadeTo("normal",1)},mouseleave:function(){a(this).find(".noty_close").stop().fadeTo("normal",0)}}),this.options.layout.name){case"top":this.$bar.css({borderRadius:"0px 0px 5px 5px",borderBottom:"2px solid #eee",borderLeft:"2px solid #eee",borderRight:"2px solid #eee",boxShadow:"0 2px 4px rgba(0, 0, 0, 0.1)"});break;case"topCenter":case"center":case"bottomCenter":case"inline":this.$bar.css({borderRadius:"5px",border:"1px solid #eee",boxShadow:"0 2px 4px rgba(0, 0, 0, 0.1)"}),this.$message.css({fontSize:"13px",textAlign:"center"});break;case"topLeft":case"topRight":case"bottomLeft":case"bottomRight":case"centerLeft":case"centerRight":this.$bar.css({borderRadius:"5px",border:"1px solid #eee",boxShadow:"0 2px 4px rgba(0, 0, 0, 0.1)"}),this.$message.css({fontSize:"13px",textAlign:"left"});break;case"bottom":this.$bar.css({borderRadius:"5px 5px 0px 0px",borderTop:"2px solid #eee",borderLeft:"2px solid #eee",borderRight:"2px solid #eee",boxShadow:"0 -2px 4px rgba(0, 0, 0, 0.1)"});break;default:this.$bar.css({border:"2px solid #eee",boxShadow:"0 2px 4px rgba(0, 0, 0, 0.1)"})}switch(this.options.type){case"alert":case"notification":this.$bar.css({backgroundColor:"#FFF",borderColor:"#CCC",color:"#444"});break;case"warning":this.$bar.css({backgroundColor:"#FFEAA8",borderColor:"#FFC237",color:"#826200"}),this.$buttons.css({borderTop:"1px solid #FFC237"});break;case"error":this.$bar.css({backgroundColor:"red",borderColor:"darkred",color:"#FFF"}),this.$message.css({fontWeight:"bold"}),this.$buttons.css({borderTop:"1px solid darkred"});break;case"information":this.$bar.css({backgroundColor:"#57B7E2",borderColor:"#0B90C4",color:"#FFF"}),this.$buttons.css({borderTop:"1px solid #0B90C4"});break;case"success":this.$bar.css({backgroundColor:"lightgreen",borderColor:"#50C24E",color:"darkgreen"}),this.$buttons.css({borderTop:"1px solid #50C24E"});break;default:this.$bar.css({backgroundColor:"#FFF",borderColor:"#CCC",color:"#444"})}},callback:{onShow:function(){a.noty.themes.defaultTheme.helpers.borderFix.apply(this)},onClose:function(){a.noty.themes.defaultTheme.helpers.borderFix.apply(this)}}}}(jQuery);

/* container/js/noty_jaf_theme.js */
(function($) {

	$.noty.themes.jafTheme = {
		name: 'jafTheme',
		/*helpers: {
			borderFix: function() {
			}
		},*/
		modal: {
			css: {
				position: 'fixed',
				width: '100%',
				height: '100%',
				backgroundColor: '#000',
				zIndex: 10000,
				opacity: 0.6,
				display: 'none',
				left: 0,
				top: 0
			}
		},
		style: function() {
		   
		   this.$bar.css({
				overflow: 'hidden'
			});

			this.$bar.on({
				mouseenter: function() { $(this).find('.noty_close').stop().fadeTo('normal',1); },
				mouseleave: function() { $(this).find('.noty_close').stop().fadeTo('normal',0); }
			});
			
			switch (this.options.type) {
         case 'error':
            parms = {
               divClass: 'ErrorMessage',
               title: $stargate.i18n('jaf.controller2.core.ErrorMessage'),
               icoClass: 'jaf-ico-message-error'
            };
            break;
            //this.$bar.css({backgroundColor: '#FFFBD7', borderColor: '#FF7F00', color: '#000000'});
            //this.$buttons.css({borderTop: '1px solid #FF7F00'}); break;
         case 'warning':
            parms = {
               divClass: 'WarningMessage',
               title: $stargate.i18n('jaf.controller2.core.WarningMessage'),
               icoClass: 'jaf-ico-message-warning'
            };
            break;
            //this.$bar.css({backgroundColor: '#FEF1EC', borderColor: '#CD0A0A', color: '#000000'});
            //this.$buttons.css({borderTop: '1px solid #CD0A0A'}); break;
         case 'information':
         default:
            parms = {
               divClass: 'InfoMessage',
               title: $stargate.i18n('jaf.controller2.core.InfoMessage'),
               icoClass: 'jaf-ico-message-info'
            };
            break;
            //this.$bar.css({backgroundColor: '#F2FEEC', borderColor: '#009527', color: '#000000'});
            //this.$buttons.css({borderTop: '1px solid #009527'}); break;
			}

			this.$bar.find('.Message').addClass(parms.divClass);
			this.$bar.find('.jaf-ico-message span').addClass(parms.icoClass);
			this.$bar.find('.TitleInfoCard').html(parms.title);
			this.$bar.find('a.close').attr('title', $stargate.i18n('PS_ALT_CHIUDI'));
			this.$bar.find('img.close').attr('alt', $stargate.i18n('PS_ALT_CHIUDI')).attr('src', $stargate.i18n('R.ICON_CLOSE'));
			
		},
		callback: {
			onShow: function() {/* $.noty.themes.defaultTheme.helpers.borderFix.apply(this);*/ },
			onClose: function() {/* $.noty.themes.defaultTheme.helpers.borderFix.apply(this); */}
		}
	};
	
   //TODO: default customizzati
   
   $.noty.defaults = {
          layout: 'top',
          theme: 'jafTheme',
          type: 'alert',
          text: '', // can be html or string
          dismissQueue: true, // If you want to use queue feature set this true
          template: 
'<div class="noty_message Message">\n'+
'  <table class="BodyInfoCard" style="border-spacing: 0;border-collapse: collapse">\n'+
'    <tr>\n'+
'     <td class="TitleInfoCard"></td>\n'+
'     </tr>\n'+
'  </table>\n'+
'  <table class="BoxInfoCard" style="border-spacing: 0;border-collapse: collapse">\n'+
'    <tr>\n'+
'      <td class="jaf-ico-message" rowspan="1" colspan="1" style="width: 2em">\n'+
'        <span style="float:left;"></span>\n'+
'       <td>\n'+
'      <td class="" rowspan="1" colspan="1">\n'+
'        <span class="noty_text" style="float:left; margin-left:0.5em;"></span>\n'+
'      </td>\n'+
'    </tr>\n'+
'  </table>\n'+
'  <a class="close"><img class="close" src="#"/></a>' +
'</div>',
          animation: {
              open: {height: 'toggle'},
              close: {height: 'toggle'},
              easing: 'easeOutExpo',
              speed: 500 // opening & closing animation speed
          },
          timeout: 0,
          force: false, // adds notification to the beginning of queue when set to true
          modal: false,
          maxVisible: 5, // you can set max visible notification for dismissQueue true option,
          killer: false, // for close all notifications before show
          closeWith: [], // ['click', 'button', 'hover'] => nothing: we use our custom handler below
          callback: {
              onShow: function() {
                 var self = this;
                 self.$bar.find('a.close').one('click', function (evt) {
                    self.stopPropagation(evt);
                    self.close();
                 });
              },
              afterShow: function() {},
              onClose: function() {},
              afterClose: function() {}
          },
          buttons: false // an array of buttons
      };

})(jQuery);



/* container/js/stargate.js */

// $Id: stargate.js,v 1.32 2014/11/18 12:05:59 E00938 Exp $

// TODO: gestione errori
// TODO: partizionare meglio tra metodi pubblici/privati/privileged

// in ms
var ANIMATION_TIME = 30;

// in ms
var ANIMATION_TIME_SLOW = 150;

var TOOLTIP_HELP_DELAY = 500;

// creiamo pseudo-namespace
if (! stargate)
{
   var stargate = {};
}

stargate.ALL_WIDGETS = [];

/**
 * Singleton per la gestione del portale
 */

stargate.Stargate = function() {};

var _container_noty_apply = true;

// 
if (window.noty && _container_noty_apply)
{
   _container_noty_apply = false;
   window.noty = function(options)
   {
      $('#portale-noty-container').noty(options);
   };
}

stargate.Stargate.prototype.error = function(error)
{

  if (error === undefined) return;
  
  var text = $stargate.i18n('PS_MSG_ERRORE_GENERICO');
  
  // oggetto xhr?
  if (error.status && error.responseText)
  {
     // 500: sessione brasata: "La prima activity di una sessione deve essere una StartingActivity"
     if (error.status == 500 && error.responseText.indexOf('POLIJ_057000') > -1)
     {
        var text = $stargate.i18n('PS_NECESSARIO_RICARICARE');
        
        if (noty)
        {
           // TODO: rendere non chiudibile questo box di errore
           text += '<p><button onclick="window.portale_reauthenticate()">' + $stargate.i18n('PS_CMD_RICARICA') + '</button></p>';
           noty({type: 'error', text: text, timeout: 0});
           
           // dato che a questo punto è tutto sfasciato e non ci piace fare l'albero di natale con i box rossi,
           // disabilitiamo la visualizzazione di ulteriori errori
           noty = function(){};
        }
        else
        {
           //TODO: alert o console.log?
           alert(text);
           window.portale_reauthenticate();
        }
        
        return false;
     }
     else
     {
        text = error.statusText;
     }
  }
  else if (error)
  {
     text = error;
  }
  
  if (noty)
  {
        noty({type: 'error', text: text, timeout: 0});
  }
  else
  {
     //alert(text);
     console.log(text);
  }
  
};


//di default in caso di errore sul widget mostriamo l'errore nel box del widget
//può essere invocata sia nel contesto del widget che di un suo sottoelemento
// va invocata nel contesto del widgetBody!
stargate.bg_default_onError = function(xhr, textStatus, errorThrown)
{
   // console.log(xhr);
   
   //TODO: filtrare su contenuto dell'errore?
   var text = xhr.responseText || '';
   
   if (text.length > 0)
   { 
      //var $target = $(this).closest('.widgetBody');
      //if ($target.length < 1) $target = $(this).find('.widgetBody');
      var $target = $(this);
      $target.html(xhr.responseText);
      // sintetizziamo un evento di widgetLoaded, altrimenti
      // eventuali pezzi di js nel widget restano inattivi
      $target.closest('.widgetFrame').trigger('widgetLoaded');
   }
   else
   {
      stargate.Stargate.prototype.error(xhr);
   }
};

// utility varie
stargate.appendParam = function(url, keyval)
{
   if (!url) return '';
   
   if (url.indexOf('?') > -1)
   {
      return url + '&' + keyval;
   }
   else
   {
      return url + '?' + keyval;
   }
};

// oggetto jQuery per accesso a metodi comuni 

// NO var!: se già esiste, il riferimento va sovrascritto

$stargate = $(new stargate.Stargate);

// listener per reload globale portale
// se hard = false ricarica solo i widget via ajax 
$stargate.on('reloadPortale', function(event, hard) {

   if (hard === false)
   {
      for (var i in stargate.ALL_WIDGETS)
      {
         stargate.ALL_WIDGETS[i].reload();      
      }
   }
   else
   {
      location.reload(true);
   }
});

$stargate.i18n = function(code)
{
   return $stargate._i18n[(code || '').toUpperCase()];
};

/**
 *  Façade container->widget
 */
stargate.Widget = function($widgetFrame)
{
   
   var _widgetId = $widgetFrame.attr('id');
   var $widgetBody  = $widgetFrame.find('div.widgetBody').eq(0);

   function _loadWidgetUrls()
   {
      var urlInit = $widgetBody.attr('data-url-init');
      var urlLogout = $widgetBody.attr('data-url-logout');
      var urlMain = $widgetBody.attr('data-url-main');
      var urlPrefs = $widgetBody.attr('data-url-prefs');
      var urlHelp = $widgetBody.attr('data-url-help');
      var urlPif = $widgetBody.attr('data-url-pif');
    
      if (!urlInit) throw 'Manca data-url-init su widget \'' + _widgetId + '\'';
      if (!urlLogout) throw 'Manca data-url-logout su widget \'' + _widgetId + '\'';
      if (!urlMain) throw 'Manca data-url-main su widget \'' + _widgetId + '\'';
      if (!urlPif) throw 'Manca data-url-pif su widget \'' + _widgetId + '\'';
      
      return {
         init  : urlInit,
         logout: urlLogout,
         main  : urlMain/* || stargate.appendParam(urlLoad, "evn_index=evento")*/,
         prefs : urlPrefs/* || stargate.appendParam(urlLoad, "evn_prefs=evento")*/,
         help  : urlHelp/* || stargate.appendParam(urlLoad, "evn_help=evento")*/,
         pif   : urlPif
      }; 
   };
   
   var _widgetUrls = _loadWidgetUrls(false); 
   
   var $widgetControls = $widgetFrame.find('div.widgetControls').eq(0);
   var $widgetTitle = $widgetFrame.children('table').find('.TitleInfoCard').eq(0);
   
   var _this = this;
   
   var _controlsActive = true;
   
   var _currentConfig = {};
   
   var _isReloading = false;
   var _reloadPeriod = 5*1000; // ms -> 5 secondi

   var _retry = 0;
   var _failed = 0;
   var _maxRetries = 3;
   
   this.widgetNS = function()
   {
      return _widgetId;
   };
   
   function _widgetVisible(value)
   {
      if (value)
      {
         $widgetFrame.show('blind', {}, 500, 'easeOutExpo');
      }
      else
      {
         $widgetFrame.hide('blind', {}, 500, 'easeOutExpo');
      }
   }
   
   /**
    * Load the widget body via AJAX from the specified URL
    */
   function _ajaxLoad(url, params, callback)
   {
      var $widgetLoading = $widgetFrame.find('div.widgetBodyContainer > div.loading');
      var $widgetImage = $widgetLoading.filter('.icon');
      
      //console.log('_ajaxLoad(): ', arguments);
      
      /**
       * Update this widget's loading status indicators according to the parameters 
       */
      function ajaxStatus(working, error)
      {
         //console.log("ajaxStatus working=", working, " error=", error);

         if (working)
         {
            _controlsActive = false;
            $widgetImage.removeClass('broken').addClass('working');
            $widgetLoading.show();
         }
         else if (error)
         {
            _controlsActive = true;
            $widgetImage.removeClass('working').addClass('broken');
            $widgetLoading.show();
         }
         else
         {
            _controlsActive = true;
            $widgetLoading.hide();
         }
      }
      
      /**
       * Turn all non-external links into AJAX calls targeting the widget frame
       */
      function ajaxRewriteLinks()
      {
         $widgetFrame.find('a[href]:not(".external")').each(function() {
            //$(this).css('color', '#008000');
            $(this).on('click', function(event) {
               event.preventDefault();

               //TODO: vanno aggiunti parametri (ticket, ecc) ? -> gestiti direttametne in _ajaxLoad (via computeParams())
               _ajaxLoad($(this).prop('href'));
            });
            
         });
      }
      
      /**
       * Modify all non-external forms so that they are submitted via an AJAX call targeting the widget frame
       */
      function ajaxRewriteForms()
      {
         $widgetFrame.find('form[action]:not(".external")').each(function() {
            
            var $form = $(this);
            
            //$form.css('background-color', '#C0FFC0');
            
            // i metodi serialize() e serializeArray() di jquery non includono il submit cliccato
            // il modo più semplice per conservare l'informazione è patchare al volo il form
            // aggiungendo un corrispondente input hidden quando viene cliccato un bottone.
            $form.find('input[type="submit"][name]').on('click', function() {
               
               // assicuriamoci che indipendentemente da altri intercettamenti dell'evento click
               // non si arrivi mai al submit con più di un campo aggiunto
               $form.find('input[class=stargate-form-auto]').remove();
               
               $form.append(
                  $("<input type='hidden'>")
                     .prop({ name: $(this).prop('name'), value: $(this).prop('value')})
                     .addClass('stargate-form-auto')
               );
               
            });

            $form.on('submit', function(event) {
               event.preventDefault();
              
               //TODO: vanno aggiunti parametri (ticket, ecc) ? -> gestiti direttamnte in _ajaxLoad (via computeParams())
               
               if ($form.prop('method') == undefined || $form.prop('method').toUpperCase() == 'GET')
               {
                  //GET
                  _ajaxLoad($(this).prop('action'), $form.serialize());
               }
               else
               {
                  //POST
                  _ajaxLoad($(this).prop('action'), $form.serializeObject());
               }
               
            });
         
         });
      }

      /**
       * Remove any existing handlers which were registered by this widget 
       */
      function ajaxCleanupHandlers()
      {
         var ns = '.' + _this.widgetNS();
         $widgetFrame.off(ns);
         $stargate.off(ns);
         
         //console.log('ajaxCleanupHandlers: off(' + ns + ')');

      }
      
      /**
       * Finalize the widget's status after a successful AJAX load
       */
      function ajaxSuccess()
      {
         $widgetFrame.trigger('widgetLoaded');
         ajaxRewriteLinks();
         ajaxRewriteForms();
         
         if (callback) callback();
      }
      
      ajaxStatus(true, false);
      
      //console.log('_ajaxLoad url=', url, ' params=', params, ' callback=', callback);
      
      //======window.setTimeout( function() {
      ajaxCleanupHandlers();
      
      // fissiamo l'altezza della div esterna
      $widgetBody.css('height', $widgetBody.height());

      $widgetBody.css('overflow-y', 'hidden');
      $widgetBody.load(url, params, function(text, status, xhr) {
    	  _retry++;
         
         //console.log("text=", text, " status=", status, "xhr=", xhr);
         
         // un errore 500 non è certo un "successo" ma ai nostri fini è equiparato
         // in quanto si porta potenzialmente dietro una error page con payload che
         // dobbiamo mostrare
         var success = (status == 'success' || xhr.status == 500);
         if(xhr.status != 200)
        	 _failed++;

         // se caricamento ok, animiamo l'altezza e sblocchiamo la div 
         if (success)
         {
            
            // se 500, dobbiamo copiare noi il contenuto da xhr al target
            if (xhr.status == 500) $widgetBody.html(xhr.responseText);
            
            var contentHeight = $('div:first', this).outerHeight();
            $(this).animate({height: contentHeight}, ANIMATION_TIME, 'easeOutExpo', function() {
               $(this).css('height', '');
               // $(this).css('overflow-y', 'auto');
               $(this).css('overflow-y', 'hidden');
               //ajaxStatus(false, false);
               //ajaxSuccess();
            });

            ajaxSuccess();
         }

         ajaxStatus(false, !success);
         
      })
      //========}, 250)
      ;

   }
   
   this.ajaxLink = function(url)
   {
      _ajaxLoad(url, computeParams(params));
   };
   
   function _computeParams(params)
   {
      /*
       * OCCHIO: _NON_ ritornare un oggetto vuoto se params è undefined
       * un oggetto parametri vuoto ha il side-effect di convertire _comunque_ la richiesta in POST
       */
      
      //if (!params) params = {};
      //params.widgetId = _widgetId;
      
      return params;
   }
   
   function _initWidget(params, callback)
   {
      _ajaxLoad(_widgetUrls.init, _computeParams(params), callback);
      _isReloading = false;
   }
   
   function _openMain(params, callback)
   {
      //console.log('ajaxLoad(' + _widgetUrls.index + ')');
      _ajaxLoad(_widgetUrls.main, _computeParams(params), callback);
   }
   
   function _openPreferences(params, callback)
   {
      _ajaxLoad(_widgetUrls.prefs, _computeParams(params), callback);
   }
   
   function _openHelp(params, callback)
   {
      _ajaxLoad(_widgetUrls.help, _computeParams(params), callback);
   }
   
   this.open = function(href, parameters)
   {
      _ajaxLoad(href, parameters);
   };
   
   function _isFineSessione(data, textStatus, xhr)
   {
      return (data.indexOf('Sessione terminata') > -1 ||                // sviluppo
              data.indexOf('/aunicalogin/sessioneterminata.jsp') > -1   // prod/test
      );
   };
   
   // esegue un evento JAF (nome passato senza evn_) sull'activity puntata da widget-url-main
   // function onSuccess(data, testStatus, xhr)
   // function onError(xhr, textStatus, errorThrown)
   this.bgOpen = function(href, data, onSuccess, onError)
   {
      $.ajax({
         url: href,
         data: data,
         type: (data !== undefined ? 'POST' : 'GET'),
         success: function(data, textStatus, xhr) {
                    if (_isFineSessione(data, textStatus, xhr))
                    {
                       console.log(_widgetId + ": sessione widget terminata, tentativo di reload automatico");
                       _this.reload();
                    }
                    else if (onSuccess) onSuccess(data, textStatus, xhr);
                    
         },
         error: onError || $.proxy(stargate.bg_default_onError, $widgetBody)
      });
   };
   
   // chiede al portale di rigenerare gli URL del widget
   // per il momento usato solo per recuperare un nuovo ticket nell'initURL
   function _refreshURLs(onSuccess, onFail)
   {
      $.ajax({
         url: stargate.appendParam(_widgetUrls.pif, "evn_refresh_urls=evento"),
         dataType: 'json',
         success: function(data, testStatus, xhr) {
            console.log("refresh url widget =>", xhr);
            
            if (data.init) $widgetBody.attr('data-url-init', data.init);
            if (data.logout) $widgetBody.attr('data-url-logout', data.logout);
            if (data.main) $widgetBody.attr('data-url-main', data.main);
            if (data.prefs) $widgetBody.attr('data-url-prefs', data.prefs);
            if (data.help) $widgetBody.attr('data-url-help', data.help);
            if (data.pif) $widgetBody.attr('data-url-pif', data.pif);
            
            _widgetUrls = _loadWidgetUrls(false);
            if (onSuccess)
            	onSuccess(xhr);
         },
         error: function(xhr, textStatus, errorThrown) {
            //console.log("Errore jafEvent:", xhr);
            //console.log("textStatus:", textStatus);
            //console.log("errorThrown:", errorThrown);
            stargate.Stargate.prototype.error(xhr);
            if (onFail)
            {
               onFail(xhr);
            }
         }
      });
   };
   
   // interfaccia pubblica widget->portale

   this.reload = function()
   {
	   console.log("Widget %s -> Retry: %d, Failed: %d, Max: %d", _widgetId, _retry, _failed, _maxRetries);

	   if(_retry >= _maxRetries) {
		   console.log("Widget reloaded retries exceeded, aborting call");
		   stargate.Stargate.prototype.error($stargate.i18n('PS_MSG_ERRORE_GENERICO'));
		   return;
	   }

      // evitiamo loop di reload...
      if (_isReloading)
      {
         console.log("Widget is already reloading, aborting call");
         stargate.Stargate.prototype.error($stargate.i18n('PS_MSG_ERRORE_GENERICO'));
         return;
      }
      
      _isReloading = true;
      
      setTimeout(function(){
    	  _refreshURLs( function() {
    		  _initWidget();
          }, function() {
        	  console.log("Impossibile ricaricare il widget");
          } );
      }, _reloadPeriod);
      
      
   };

   this.setTitle = function(title)
   {
      $widgetTitle.html(title);
      return _this;
   };
   
   function _applyConfig(config)
   {
      //console.log($widgetTitle.html(), ": applying config => ", config);
      
      $widgetControls.find('.collapse').css('display', (config.expand && config.size == 'expanded' ? 'inline-block' : 'none'));
      $widgetControls.find('.expand').css('display', (config.expand && config.size == 'collapsed' ? 'inline-block' : 'none'));
      
      $widgetControls.find('.settings').css('display', (config.settings ? 'inline-block' : 'none'));
      
      $widgetControls.find('.help').css('display', (config.help ? 'inline-block' : 'none'));
      $widgetControls.find('.close').css('display', (config.close ? 'inline-block' : 'none'));
      
      _widgetVisible(config.visible);
      
      _currentConfig = config;
   }
   
   this.setConfig = function(config)
   {
      //console.log($widgetTitle.html(), ": setConfig => ", config);
      
      config = $.extend({}, _this.defaultConfig, config);
      
      _applyConfig(config);

      return _this;
   };
   
   this.updateConfig = function(config)
   {
      config = $.extend({}, _currentConfig, config);
      
      _applyConfig(config);
      
      return _this;
   };
   
   function _prependNamespace(args)
   {
      // c'è un modo più efficiente?
      var res = [_widgetId];
      Array.prototype.push.apply(res, args);
      
      return res;
   }
   
   // inizializzazione listener
   function _attachHandlers()
   {
      $widgetControls
         .find('.settings')
         .on('click', function() { if (_controlsActive) _openPreferences();  });
      
      $widgetControls
         .find('.expand')
         .on('click', function() { if (_controlsActive) _openMain({mode: 'expanded'}); });
      
      $widgetControls
         .find('.collapse')
         .on('click', function() { if (_controlsActive) _openMain({mode: 'collapsed'}); });
      
      $widgetControls
         .find('.help')
         .on('click', function() { if (_controlsActive) _openHelp(); });

      $widgetControls
         .find('.close')
         .on('click', function() { if (_controlsActive) _openMain(); });      
  
   }
   
   function _start()
   {
      _attachHandlers();
      _initWidget();
      
      //TODO: registrare solo quelli caricati con successo, quindi nel callback di openIndex()?
      stargate.ALL_WIDGETS.push(_this);
   }
  
   
   _start();
   
   return _this;
};

// default di configurazione
stargate.Widget.prototype.defaultConfig =  
{
   expand   : true,
   size     : 'collapsed',
   settings : true,
   help     : false,
   close    : false,
   visible  : true
};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

   

(function($) {
   
   // recupera il namespace associato ad un oggetto widget (elemento DOM o oggetto js)
   function widgetNS(obj)
   {
      while (obj)
      {
         if (typeof (obj.widgetNS) == 'function') return obj.widgetNS();
         obj = $(obj).widget(false);
      }
      return '';
   }
   
   function toArray(args, base)
   {
      // conversione argomenti in array "vero"
      if (!base) base = [];
      Array.prototype.push.apply(base, args);
      
      return base;
   }
   
   // facciamo in modo di non sp*ttanare sistematicamente le URL firmate
   // e di non forzare il reload di tutti i dannati script e css statici
   $.ajaxPrefilter(function(options) {
      if (options.url.match(/(&|\?)__pj0=/)  ||
          options.url.match(/\.js$/)         ||
          options.url.match(/\.css$/))
      {
         options.cache = true;
      }
   });
   
	$.fn.extend({
	   
	   /**
	    * 
	    * crea o recupera l'oggetto JS associato a un widget jQuery
	    * .widget(false) non crea mai l'oggetto, ritornando solo quello esistente (se c'è)
	    * 
	    */
	   widget: function( options ) {
	      var res;

	      this.each( function() {
	         var $this = $(this);
	         var widget = $this.data('widget');
			
	         if (!widget && options !== false)
	         {
	            widget = new stargate.Widget( $this, options );
	            $this.data('widget', widget);
	         }
	         res = widget;
			
	      });
	      return res;
	   },
	   
	   /**
	    * Registra handler con nel namespace del widget passato come primo argomento,
	    * o in quello del contesto corrente (ammesso che sia un widget...)
	    * 
	    * es.
	    * $widget.onWidget(events, selector, data, handler)
	    * $stargate.onWidget(widget, events, selector, data, handler)
	    */
	   onWidget: function() {
	      
	      var args = toArray(arguments);
	      	      
	      // recuperiamo il namespace da usare
	      var ns = '';
	      
	      // widget passato esplicitamente?
	      if (typeof(args[0]) != 'string')
	      {
	         ns = widgetNS(args[0]);
	         args.shift();
	      }
	      // altrimenti usiamo l'oggetto corrente
	      else
	      {
	         ns = widgetNS(this);
	      }
	      
	      if (!ns) throw 'Impossibile determinare il namespace del widget corrente';
	      
	      ns = '.' + ns;
	      
	      // aggiungiamo il namespace agli eventi da registrare
         var events = args[0].split(/\s+/);
         for (var i = 0; i < events.length; i++) events[i] += ns;
         args[0] = events.join(' ');
         
         //console.log('onWidget: ', args);
	      
	      // registriamo l'evento
	      $.fn.on.apply(this, args);

	      return this;
	   },

	   ajaxButtons: function() {
	      var widget = $(this).closest('.widgetFrame').widget();
         
         $x.find('button[data-ajax-href]').each( function() {
            $(this).css('color', '#008000');
            $(this).on('click', function() {
               widget.ajaxLink($(this).prop('data-ajax-href'));
            });
            
         });
         
         return this;
	   },
	   
	   decorateFormButtons: function() {
	      $(this).find('form').each( function() {
	         
	         var $form = $(this);
	         
	         // aggiungiamo un prompt di conferma ai bottoni "annulla" se ci sono modifiche rispetto al salvato
	         $form.find('.cancel').on('click', function(event) {
	         
	            var changed = false;

	            $form.find('input').each( function() {
	               if (this.checked != this.defaultChecked || this.value != this.defaultValue)
	               {
	                  changed = true;
	                  return false;
	               }
	            });
	            
	            if (!changed)
	            {
	               $form.find('option').each( function() {
	                  if (this.selected != this.defaultSelected)
	                  {
	                     changed = true;
	                     return false;
	                  }
	                  
	               });
	            }
	         
	            if (changed && !confirm("Annullare le modifiche?")) event.preventDefault();
	         });

	      });
	      
	      return this;
	      
	   },
	   
	   // helper per convertire un form in un oggetto js
	   // http://stackoverflow.com/questions/1184624/convert-form-data-to-js-object-with-jquery
	   serializeObject: function() {
	      var o = {};
	      $.each(this.serializeArray(), function() {
	         if (o[this.name] !== undefined) 
	         {
	            if (!o[this.name].push) 
	            {
	                o[this.name] = [o[this.name]];
	            }
	            o[this.name].push(this.value || '');
	        } 
	        else
	        {
	            o[this.name] = this.value || '';
	        }
	      });
	      return o;
	   },
	   
	   
	   // fa sì che un link venga caricato via ajax in background, eseguendo l'handler passato in caso di successo 

	   /**
	    * @param {boolean} immediate  se true le modifiche DOM avvengono prima della chiamata AJAX
	    */
	   onClick_ajax: function(success, error, immediate) {
	      
		  // if needed scroll the params
		  if (error === true || error === false) {
			  immediate = error;
			  error = undefined;
		  }
	      
	      $(this).filter('[href]').each(function() {
	         $(this).on('click', function(event) {

	        	event.preventDefault();
	        	 
	            var _this = this;
	            var _success = $.proxy(success, _this);
	            var _error   = (error ? $.proxy(error, _this) : $.proxy(stargate.bg_default_onError, $(_this).closest('.widgetBody')));

	            
	            if (immediate) {
	            	try {
		            	_success();
					} catch (e) {
						console.log(e);
					}
	            }

	            $.ajax({
	               url: stargate.appendParam($(this).attr('href'), 'bgMode=true'),
	               success: function() {
	            	   if (!immediate) {
	            		   _success();
	            	   }
	               },
	               error: _error
	            });

	         });
	      });
	      
	      return this;
	   }
	   
	});
	
	function tt_init_hover(id){
      if(polij_jslib_version >2){
         var $element = $('#' + id);
         var $content = $element.html();
         var $targetID = $element.attr('data-jaf-tooltip-target');
         var $target = $('#' +$targetID);
               var $tooltipClassCalcolata = $element.attr('data-jaf-tooltip-class');
               var $contentType = $element.attr('data-jaf-tooltip-contentType');
         var $positionRicavata = {
               my: $element.attr('data-jaf-tooltip-position-TooltipBox'),
               at: $element.attr('data-jaf-tooltip-position-Target')
            };

         // tooltip
         $target.tooltip({
             items: $target,
             
             tooltipClass: $tooltipClassCalcolata,
               
             position: $positionRicavata,
             
             show: {
                delay: TOOLTIP_HELP_DELAY
             },

             content: function(){
               if ( $contentType=='text' ){
                   return $content;
               }
                 
               if ( $contentType=='url' ){
                  try {
                     var $url = $element.text();
                     var $divTooltip = $('<iframe src="'+$url+'" frameBorder="0" ></iframe>');
                     return  $divTooltip ;
                  } catch (exception) { alert('errore' + e); } 
               }
             },
             
             close: function( event, ui ) {
                ui.tooltip.hover(
                    function () {
                        $(this).stop(true).fadeTo(400, 1); 
                    },
                    function () {
                        $(this).fadeOut("400", function(){ $(this).remove(); });
                    }
                );
              }
             
           });
         
         $element.hide(); 
      }
   }
	
	// per i tooltip di servizi/preferiti, l'evento di inizializzazione deve essere controllato da noi
	var __jaf_tooltip_init = window.jaf_tooltip_init;
	window.jaf_tooltip_init = function (id)
	{
	   // è un tooltip servizi o prefeiti?
	   if ($('#' + id + '[data-jaf-tooltip-class=srvTooltip]').length < 1)
	   {
	      // no -> init immediato
	      __jaf_tooltip_init(id);
	   }
	   /*else
	   {
	      console.log('skipping init for ' ,id);
	   }*/
	};
	
	window.servizi_tooltip_init = function (id)
	{
	   tt_init_hover(id);
	   //__jaf_tooltip_init(id);
	   
	};
	

})(jQuery);


/* servizi/js/servizi.js */
function servizi_setup($widget, collapsedSections, widget_mode)
{
   var searchIndex = 0;
   
   var $cleanLink = $widget.find('div.cercaServizio .icon a');
   
   var $elencoServizi = $widget.find('ul.elencoServizi');
   
   var $widgetContent = $widget.find('.widgetContent');
   
   function showEl($el, onComplete)
   {
      $el.show('blind', { easing : 'easeOutExpo'}, ANIMATION_TIME_SLOW, onComplete);
   }
   
   function hideEl($el, onComplete)
   {
      $el.hide('blind', { easing : 'easeOutExpo'}, ANIMATION_TIME_SLOW, onComplete);
   }
   
   var qco = 1; 
   
   var Queue = function(onQueueComplete)
   {
      var _this = this;
      var cnt = qco++;
      
      var tracker = [];
      
      var triggered = false;
      var held = false; 
      
      function fire()
      {
         if (held) return;
         
         if (onQueueComplete) onQueueComplete();
         triggered = false;
      }
      
      this.run = function(fn)
      {
         tracker.push('');
         //console.log(cnt, 'run(), len=', tracker.length);
         if (fn) fn();
         
         return _this;
      }
      
      this.complete = function(fn)
      {
         if (fn) fn();
         if (tracker.length == 1) triggered = true;
         tracker.pop();
         //console.log(cnt, 'complete(), len=', tracker.length);
         if (triggered) fire();
         
         return _this;
      }
      
      this.hold = function()
      {
         held = true;
         
         return _this;
      }
      
      this.release = function()
      {
         held = false;
         if (triggered) fire();
         
         return _this;
      }
      
      this.showEl = function($el, onComplete)
      {
         _this.run(function() {
            showEl($el, function() {
               _this.complete(onComplete);
            });
         });
         
         return _this;
      }
      
      this.hideEl = function($el, onComplete)
      {
         _this.run(function() {
            hideEl($el, function() {
               _this.complete(onComplete);
            });
         });
         
         return _this;
      }
      
   }
   
   // handler apri/chiudi sezioni
   
   function fExpand($li)
   {
      //console.log('fExpand');
      showEl($li.children('ul'), function(){
         $li.removeClass('collapsed');
      });
   }
   
   function fCollapse($li)
   {
      //console.log('fCollapse');
      hideEl($li.children('ul'), function(){
         $li.addClass('collapsed');
      });
   }
   
   $elencoServizi.children('li').find('a.expand').onClick_ajax(
      function() 
      {
         fExpand($(this).closest('li'));
      },
      true	// immediate DOM feedback and background error
   );

   $elencoServizi.children('li').find('a.collapse').onClick_ajax(
      function()
      {
         fCollapse($(this).closest('li'));
      },
      true	// immediate DOM feedback and background error
   );
   
   $elencoServizi.children('li').find('a.toggle').onClick_ajax(
      function()
      {
         var $li = $(this).closest('li');
         //console.log('li->', $li);
         if ($li.hasClass('collapsed'))
         {
            fExpand($li);
         }
         else
         {
            fCollapse($li);
         }
      }, 
      true	// immediate DOM feedback and background error
   );

   function canon(text)
   {
      if (!text) return text;
      return text.toLowerCase().replace(/[^a-z0-9 ]+/g, '');
   }

   $sr = $elencoServizi.find('.searchResults > ul').eq(0);
   $nothing = $elencoServizi.find('.searchResults .nothing').eq(0);

   // ricerca ajax

   function search($textField)
   {

      var index = ++searchIndex;

      function serviceLabel($li)
      {
         //TODO: cercare _solo_ nella label (i.e. escludere i figli)
         // idea: mettere il testo di ricerca, giï¿½ canon, in un attributo del LI
         //return canon($li.children('.label').text());
         return $li.attr('data-search');
      }

      function doSearch()
      {
         var text = $textField.val();
         
         if (text)
         {
            var q = new Queue(function(){
               //console.log('onComplete: +searchActive');
               $widgetContent.addClass('searchActive');
               $cleanLink.attr('title', $cleanLink.attr('data-active-title'));
            }).hold();
            

            text = canon(text);
            
            var something = false;
            
            $elencoServizi.find('li.srvSection').each(function() {
               
               var $li = $(this);
               var hidden = true;
               
               $li.find('li[data-search]').each(function() {
                  var $this = $(this);
                  //TODO: matchare *solo* il nome servizio e non l'help
                  if (serviceLabel($this).indexOf(text) > -1)
                  {
                     //console.log('matched: ', this);
                     hidden = false;
                     something = true;
                     q.showEl($this);
                  }
                  else
                  {
                     q.hideEl($this);
                  }

               });
                  
               if (hidden)
               {
                  q.hideEl($li);
                  
               }
               else
               {
                  // assicuriamoci che la sezione sia visibile anche se collassata
                  //console.log('showEl: ', $li);
                  //q.showEl($li);
                  q.showEl($li.add($li.children('ul')));
               }
            });
             



            //console.log('matched:', matched);*/
            if (something) 
            {
               q.hideEl($nothing);
            }
            else
            {
               q.showEl($nothing);
            }

            q.release();

         } 
         else
         {
            
            var q = new Queue(function(){
               //console.log('onComplete: -searchActive');
               $cleanLink.attr('title', '');
               $widgetContent.removeClass('searchActive');
            }).hold();
            
            $elencoServizi.find('li.srvSection').each(function() {

               var $li = $(this);
               
               // show again the section header and remove the filter from its subservices
               // pending.run(function() {showEl($li, function() {pending.complete()}); });
               q.showEl($li.add($li.find('li')));
               
               //TODO: make sure the collapsed status is applied correctly
               if ($li.hasClass('collapsed'))
               {
                  q.hideEl($li.children('ul'));
                  //$li.children('ul').hide();
               }
               else
               {
                  //pending.run(function() {showEl($li.children('ul'), function() {pending.complete()}); });
                  q.showEl($li.children('ul'));
               }
               
               $li.find('li').each(function() {
                  //pending.run(function() {showEl($(this), function() {pending.complete()}); });
                  q.showEl($li);
               });
               
            });
            
            
            //$widget.removeClass('searchActive');
            
            q.release();
            
         }
      }

      // lanciamo la ricerca 300ms dopo l'invocazione, ma solo se nel frattempo non ne sono state invocate altre
      window.setTimeout(function()
      {
         if (index == searchIndex)
         {
            doSearch();
         }
      }, 333);

   }
   
   $widget.find('form.cercaServizio').on('submit',
      function(e)
      {
         e.preventDefault()
      });
   $widget.find('a.clean').on('click', function()
   {
      $textField = $(this).closest('form').find('input').val('');
      search($textField);
   });

   $widget.find('input.cercaServizio').on('keyup',
      function()
      {
         search($(this));
      });
   
   // vogliamo anche reagire a seguito di autocomplete o simili
   // questo causa eventi duplicati, ma abbiamo giï¿½ il meccanismo di counter quindi ce ne freghiamo
   $widget.find('input.cercaServizio').on('change',
      function()
      {
         search($(this));
      });

   
   function favAnim(node) {
      var $test = $(node);
      
      // se l'elemento ï¿½ nascosto (es. perchï¿½ ï¿½ in una section chiusa) non c'ï¿½ nulla da animare
      if (!$test.is(':visible')) return;
      
	   $("#starAnim").remove();	// cleanup pending anim
		var offset = $test.offset();
		var width = $test.width();
		var anim = "<img src='"+ $test.prop('src') +"' id='starAnim' style='position: absolute; top: "+offset.top+"px; left:"+offset.left+"px; width:"+width+"px; pointer-events:none; ' >";
		$("body").append(anim);
		var $anim = $("#starAnim");
		$anim.animate(
			{
				opacity: 0,
				top: (offset.top-width)+"px",
				left: (offset.left-width/2)+"px",
				width: width*2
			}
			,500
			,"linear"
			, function() { $anim.remove(); }
		);
	}
   
   // preferiti
   function fav_add(node)
   {
	   if($stargate.isManutenzione)
		   return;
	  favAnim(
	      $elencoServizi.find(
	         'li[data-idservizio="' + $(node).attr('data-idservizio') + '"]')
	         .addClass('fav').find("a.fav_remove:visible img, a.fav_add:visible img").get()
      );
   }

   function fav_remove(node)
   {
	   if($stargate.isManutenzione)
		   return;
	  favAnim(
	      $elencoServizi.find(
	         'li[data-idservizio="' + $(node).attr('data-idservizio') + '"]')
	         .removeClass('fav').find("a.fav_remove:visible img, a.fav_add:visible img").get()
      );
   }

   // preferiti: azioni locali
   // le azioni passano tramite un evento per poter usare lo stesso codice per gestire sia l'azione locale che quella
   // causata dal widget preferiti
   /*$elencoServizi.find('ul li a.fav_add').onClick_ajax(
      function()
      {
         var $li = $(this).closest('li');
         
         // precedenti nella stessa sezione...
         var $prev = $li.prevAll('li[data-idservizio]');
         
         // ... piï¿½ tutti nelle sezioni precedenti
         // TODO: escludere la sezione 'in evidenza'?
         $prev = $prev.add($li.closest('ul.elencoServizi > li').prevAll().find('li[data-idservizio]'));
         
         var prev_ids = {};
         $prev.each(function() {
            prev_ids[$(this).attr('data-idservizio')] = true;
         });
         
         $stargate.trigger('fav_add', [$(this).closest('li'), prev_ids]);
      },
      true
      );

   $elencoServizi.find('ul li a.fav_remove').onClick_ajax(
      function()
      {
         $stargate.trigger('fav_remove', $(this).closest('li'));
      },
      true);*/
   
   $elencoServizi.find('ul li a.fav_add').on('click', function(e){
      e.preventDefault();
      $stargate.trigger('fav_add', $(this).closest('li'));
   });
   
   $elencoServizi.find('ul li a.fav_remove').on('click', function(e){
      e.preventDefault();
      $stargate.trigger('fav_remove', $(this).closest('li'));
   });

   // preferiti: listener
   $stargate.onWidget($widget, 'fav_add', function(e, node)
   {
      //console.log('fav_add-> ', arguments);
      fav_add(node);
   });

   $stargate.onWidget($widget, ' fav_remove', function(e, node)
   {
      //console.log('fav_remove-> ', arguments);
      fav_remove(node);
   });
   
   // inizializzazione tooltip
   if (widget_mode == 'collapsed')
   {
      servizi_srvTooltip($elencoServizi.find('div[data-jaf-tooltip-class="srvTooltip"]'));
   }
   else
   {
      $elencoServizi.find('div[data-jaf-tooltip-class="srvTooltip"]').show();
   }
      
}

function servizi_srvTooltip($element)
{
   if (window.servizi_tooltip_init)
   {
      $element.each(function() {
         var $this = $(this);
         window.servizi_tooltip_init($this.attr('id'), true);

         // workaround per tooltip 'incastrati' dopo un'apertura in popup (http://bugs.jqueryui.com/ticket/9336)
         var target = $this.attr('data-jaf-tooltip-target');
         $('a#' + target).on('click', function() {
            var $this = $(this);
            //console.log($this.attr('id'), '=> workaround');
            $this.tooltip('disable');
            $this.on('mouseenter', function() {
               var $this = $(this);
               //console.log($this.attr('id'), '=> mouseenter');
               $this.off('mouseenter', arguments.callee);
               $this.tooltip('enable');
               $this.trigger('mouseenter');
            });
         });         
      });
   }
}

/* preferiti/js/preferiti.js */
function preferiti_setup($widget)
{
   var $ul = $widget.find('ul.elencoServizi ul');
   var $fav_no = $widget.find('.fav_no');
   var $fav_yes = $widget.find('.fav_yes');
   
   //var visible = ($fav_yes.length > 0); 
   
   function visible()
   {
      //return $fav_yes.is(':visible');
      return ($fav_yes.length > 0);
   };
            
   function updateView0()
   {
      var visibleCount = $ul.find('li:not(.removing)').length;
      if (visibleCount < 1)
      {
         $fav_yes.hide('blind', {easing: 'easeOutExpo'}, 500);
         //, function() {
            $fav_no.show('blind', {easing: 'easeOutExpo'}, 500);
         //});
         
         $widget.widget().updateConfig({/*expand: false,*/ help: false});
      }
   };
            
   function updateView()
   {
      var visibleCount = $ul.find('li:not(.removing)').length;
      if (visibleCount > 0)
      {
         $fav_no.hide('blind', {easing: 'easeOutExpo'}, 500);
         $fav_yes.show('blind', {easing: 'easeOutExpo'}, 500);
         $widget.widget().updateConfig({/*expand: true,*/ help: true});
      }
      
      
   };
               
   function attachHandlers($li)
   {
      
      // le azioni passano tramite un evento per poter usare lo stesso codice per gestire sia l'azione locale che quella
      // causata dal widget servizi
      
      /*$li.find('a.fav_remove').onClick_ajax(function() {
         $stargate.trigger('fav_remove', $li);
      }, true);*/
      
      $li.find('a.fav_remove').on('click', function(e) {
         e.preventDefault();
         $stargate.trigger('fav_remove', $li);
      });
      
      /*$li.find('a.info').on('click', function() {
         
      });
      
      $li.find('a.widget_add').on('click', function() {
      
      });
      
      $li.find('a.widget_remove').on('click', function() {
         
      });*/
   };
   
   function saveFavorites()
   {
      var arr = [];
      $ul.find('li[data-idvm]').each(function(){
         arr.push($(this).attr('data-idvm'));
      });
      
      $widget.saveFavOrder({fav: JSON.stringify(arr)});
   };
   
   function setupSortable($ul)
   {
     $ul.sortable({
        axis: 'y',
        containment: $widget/*.find('.widgetBody')*/,
        cursor: 'url(/portaleservizi/portale/container/icons/cursors/closedhand.cur), move',
        distance: 5,
        opacity: 0.75,
        revert: 100,
        //handle: '.drag',
        
        update: function(event, ui)
        {
           saveFavorites();
        }
     });
     

     
   };
      
   function fav_remove(node, nosave)
   {
      var ids = $(node).attr('data-idservizio');
      
      //console.log('preferiti::fav_remove: ', node);
      
      var $li = $ul.find('li[data-idservizio="' + ids + '"]');
      
      if (visible())
      {
         $li.addClass('removing');
         updateView0();
         $li.hide('blind', {easing: 'easeOutExpo'}, 500, function() {
            //console.log('removing li[data-idservizio=' + $li.attr('data-idservizio') + ']');
            $li.remove();
            updateView();
            
            $ul.sortable('refresh');
            
            saveFavorites();
         });
      }
      else
      {
         $li.remove();
         
         saveFavorites();
      }
      
      
   };
   
   function fav_add(node, prev_ids)
   {
      
      //console.log('preferiti.fav_add:', arguments);
      
      // assicuriamoci che non ci siano zombie nella lista
      fav_remove(node, true);

      // troviamo la posizione di inserimento
      var $following = null;
      
      // sortable: inseriamo semplicemente all'inizio
      /*if (prev_ids)
      {
         $ul.children('li[data-idservizio]').each(function() {
            var $this = $(this);
            if (!prev_ids[$this.attr('data-idservizio')])
            {
               $following = $this;
               return false;
            }
         });
      }*/
      $following = $ul.children('li[data-idservizio]');

      // cloniamo il nodo
      var $li = $(node).clone(false)/*.css('padding-top', '10px')*/.addClass('fav').hide();
      
      function srv2fav(index, old)
      {
         return old.replace(/^srv/, 'fav');
      };
      
      // mettiamo a posto i vari id per i tooltip: srv->fav
      $li.find('a.srv_link, span.srv_disabled').each(function() {
         $(this).attr('id', srv2fav);
      });
      
      $li.find('div[data-jaf-tooltip-class="srvTooltip"]').each(function() {
         var $this = $(this);
         $this.attr('id', srv2fav);
         $this.attr('data-jaf-tooltip-target', srv2fav);
      });

      // infiliamolo al posto giusto (niente battute)
      if ($following && $following.length > 0)
      {
         $li.insertBefore($following.eq(0));
      }
      else
      {
         $li.appendTo($ul);
      }
      
      // se la lista è visibile, facciamo l'effettino per rendere felici i bimbi
      if (visible())
      {
         updateView();
         $li.show('blind', {easing: 'easeOutExpo'}, 500);
         attachHandlers($li);
         // appiccichiamoci il tooltip
         servizi_srvTooltip($li.find('div[data-jaf-tooltip-class="srvTooltip"]'));
         
         $ul.sortable('refresh');
         
      }
      
      saveFavorites();
      
   };
   
   /*function fav_save()
   {
      favs = [];
      $ul.find('li[data-idservizio]').each(function() {
        favs.push($(this).attr('data-idservizio'));
      });
      
      $stargate.setProperty('favorites', JSON.stringify(favs));
   }*/
   
   // preferiti: listener
   $stargate.onWidget($widget, 'fav_add', function(e, node, prev_ids) {
      fav_add(node, prev_ids);
   });
   
   $stargate.onWidget($widget, 'fav_remove', function(e, node) {
      fav_remove(node);
   });

   
   // setup iniziale
   if (visible())
   {
      $ul.find('li[data-idservizio]').each(function() {
         attachHandlers($(this));
      });
      
      setupSortable($ul);
      
      updateView0();
      updateView();
      
      // inizializzazione tooltip
      servizi_srvTooltip($ul.find('[data-jaf-tooltip-class="srvTooltip"]'));
      
   }
            
}