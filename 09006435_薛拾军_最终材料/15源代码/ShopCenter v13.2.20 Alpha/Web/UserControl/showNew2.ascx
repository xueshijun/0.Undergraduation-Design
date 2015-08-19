<%@ Control Language="C#" AutoEventWireup="true" CodeFile="showNew2.ascx.cs" Inherits="UserControl_showNew" %>
    <link rel="stylesheet" href="css/index/default/default.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/index/pascal/pascal.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/index/orman/orman.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/index/nivo-slider.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/index/style.css" type="text/css" media="screen" />
    <div class="index_newbg">   
     
				    <h2>新品上市</h2>
				    <ul class="tags">
					     
				    </ul>   
				    <ul class="newsa" id="con_one_1">
					    <li class="img-ad">
					        <a href="#" target="_blank"> <img src="images/newwear/cpl1.jpg" width="345" height="200" alt="" /></a>
					    </li>
    						
					    <li>
    <div id="wrapper">  
        <div class="slider-wrapper theme-default">
            <div class="ribbon"></div>
            <div id="slider" class="nivoSlider">
                <img src="images/indexonshow/toystory.jpg" alt="" /> 
                <img src="images/indexonshow/up.jpg" alt="" title="This is an example of a caption" /> 
                <img src="images/indexonshow/walle.jpg" alt="" data-transition="slideInLeft" />
                <img src="images/indexonshow/nemo.jpg" alt="" title="#htmlcaption" />
            </div>
            <div id="htmlcaption" class="nivo-html-caption">
                <strong>This</strong> is an example of a <em>HTML</em> caption with <a href="#">a link</a>.
            </div>
        </div>

    </div>
    </li>
    </ul>
    </div>
      <script type="text/javascript" src="js/index/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="js/index/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>