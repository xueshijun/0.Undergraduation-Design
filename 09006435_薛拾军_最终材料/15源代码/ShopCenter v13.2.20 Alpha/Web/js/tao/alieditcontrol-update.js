/*pub-2|2011-10-28 17:21:22*/Array.prototype.forEach||(Array.prototype.forEach=function(a,b){var c=this.length;for(var d=0;d<c;d++)a.call(b,this[d],d,this)}),window.AlieditControl||function(a){var b;window.AC=b=a.AlieditControl={},b.randomDownload=!1,b.minVersion="2.4.0.1",b.cfg={MOCK:"aliedit-xbox",IFRAME:"aliedit-iframe",OVERLAY:"aliedit-box-shadow",LOAD:"aliedit-load",loadsrc:"https://img.alipay.com/global/loading.gif",ifrsrc:"https://auth.alipay.com/login/alieditXbox.htm",tipsrc:"https://securitycenter.alipay.com/sc/aliedit/intro.htm",overflow:""},b.URL={win:{ie:"https://download.alipay.com/aliedit/aliedit/2401/aliedit.exe",random:"https://download.alipay.com/aliedit/aliedit/2401/aliedit.exe",other:"https://download.alipay.com/aliedit/npaliedit/1302/npaliedit.exe"},mac:{safari:"https://download.alipay.com/aliedit/wkaliedit/1002/wkaliedit.dmg"}},b.on=function(a,b,c){a.addEventListener?a.addEventListener(b,c,!1):a.attachEvent?a.attachEvent("on"+b,c):a["on"+b]=c},b.dom={getElementsByAttr:function(a,b,c,d){var d=d||document,e=d.getElementsByTagName(c||"*"),f=[];for(var g=0;g<e.length;g++)switch(a){case"class":var h=new RegExp("(?:^|\\s+)"+b+"(?:\\s+|$)");h.test(e[g].className)&&f.push(e[g]);break;default:e[g].getAttribute(a)==b&&f.push(e[g])}return f},get:function(a){return document.getElementById(a)||null},create:function(a,b){var c=document.createElement(a);if(b===null)return c;for(p in b)if(p=="class"||p=="className")c.className=b[p];else if(p=="style")for(s in b[p])c.style[s]=b[p][s];else p==="innerHTML"?c.innerHTML=b[p]:p==="appendTo"?b[p].appendChild(c):p==="append"?c.appendChild(b[p]):c.setAttribute([p],b[p]);return c}},b.env=function(){var a=navigator.userAgent.toLowerCase();return{platform:{windows:/(windows|win32)/.test(a),mac:/macintosh/.test(a)},browser:{version:(a.match(/.+(?:rv|it|ra|ie)[\/: ]([\d.]+)/)||[])[1],chrome:/webkit/.test(a)&&/chrome/.test(a),safari:/webkit/.test(a)&&/safari/.test(a)&&!/chrome/.test(a),opera:/opera/.test(a),msie:/msie/.test(a)&&!/opera/.test(a),mozilla:/mozilla/.test(a)&&!/(compatible|webkit)/.test(a)},browserMode:document.compatMode}}();var c=function(){if(!window.ActiveXObject)return navigator.plugins["Alipay security control"]||navigator.plugins["Aliedit Plug-In"]||navigator.plugins.Aliedit||null;try{return new ActiveXObject("Aliedit.EditCtrl")}catch(a){}return null},d=c();b.installedAliedit=d?!0:!1,b.detect=!1,b.debug=/debugger;/.test(location.href),b.getVersion=function(a){var c=a||d,e="";try{e=c.alieditVersion()}catch(f){b.log("get ver err\uff1a"+f)}return e},b.src||function(){var a=null;b.env.platform.windows?a=b.env.browser.msie?b.URL.win.ie:b.URL.win.other:b.env.platform.mac&&(a=b.env.browser.safari?b.URL.mac.safari:null),b.src=a}(),b.updateSrc=function(a){var c=a||b.randomDownload;b.src=c?b.URL.win.random:b.URL.win.ie,b.log("update url ok : "+b.src)},b.val=function(a){return a&&a.TextData?a.TextData:null},b.tips=function(a,b){},b.UI=function(){},b.bindEvent=function(){var a=b.getAliedit();a[0]&&a.forEach(function(a,c){a.form&&b.on(a,"keydown",function(b){try{if(b.keyCode==13){var c=getSubmit(a.form);c?c.click():null}}catch(d){alert(d)}})})},b.detectAliedit=function(a){},b.getAliedit=function(){var a=null,c=arguments[0];if(c&&typeof c=="string")return document.getElementById(c)||null;var d=c&&c.nodeName&&typeof c=="object"?c:document;return window.ActiveXObject?a=b.dom.getElementsByAttr("classid","clsid:488A4255-3236-44B3-8F27-FA1AECAA8844","object",d):a=b.dom.getElementsByAttr("type","application/aliedit","embed",d),a},b.getAlieditId=b.getAliedit,b.init=function(){b.UI(),b.bindEvent()},b.log=function(c){a.console&&console.log&&b.debug&&console.log(c)},b.dialog=function(){}}(window);