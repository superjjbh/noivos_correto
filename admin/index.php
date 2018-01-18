<?php
require_once '../loader.php';
@session_start();
if (!isset($_SESSION['LOGADO']) || $_SESSION['LOGADO'] == FALSE) {
    @header('location:' . Validacao::getBase() . 'admin/logar/');
    exit;
}
$site = new Site();
$site->site_id;
$site->getMeta();
$contato = new Contato();
$contato->getContato();
?>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="pt"> <!--<![endif]-->

    <!-- START @HEAD -->
    <head>
        <?php require_once './base.php'; ?>
        <!-- START @META SECTION -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="description" content="<?= $site->site_meta_desc ?>">
        <meta name="keywords" content="<?= $site->site_meta_palavra ?>">
        <meta name="author" content="<?= $site->site_meta_autor ?>">
        <title><?= $site->site_meta_titulo ?></title>
        <!--/ END META SECTION -->

        <!-- START @FAVICONS -->
        <link href="./assets/img/ico/apple-touch-icon.png?<?= rand(0, 100) ?>" rel="shortcut icon" sizes="144x144">
        <!--/ END FAVICONS -->

        <!-- START @FONT STYLES -->
        <link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700" rel="stylesheet">
        <link href='//fonts.googleapis.com/css?family=Architects+Daughter' rel='stylesheet' type='text/css'>
        <!--/ END FONT STYLES -->

        <!-- START @GLOBAL MANDATORY STYLES -->
        <link href="./assets/css/bootstrap.min.css" rel="stylesheet">
        <!--/ END GLOBAL MANDATORY STYLES -->

        <!-- START @PAGE LEVEL STYLES -->
        <link href="./assets/fontawesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="./assets/css/animate.min.css" rel="stylesheet">
        <link href="./assets/css/jquery.gritter.css" rel="stylesheet">
        <!--/ END PAGE LEVEL STYLES -->

        <!-- START @THEME STYLES -->
        <link href="./assets/css/reset.css" rel="stylesheet">
        <link href="./assets/css/layout.css" rel="stylesheet">
        <link href="./assets/css/components.css" rel="stylesheet">
        <link href="./assets/css/plugins.css" rel="stylesheet">
        <link href="./assets/css/themes/default.theme.css" rel="stylesheet" id="theme">
        <link href="./assets/css/custom.css" rel="stylesheet">
        <link href="./assets/css/glyphicons/web/html_css/css/glyphicons.css" rel="stylesheet">
        <link href="./assets/css/glyphicons.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/SharpCalendar/sharpCalendar/css/jquery.sharpCalendar.css" type="text/css" media="screen">		
        <link rel="stylesheet" href="assets/SharpCalendar/css/reset.css" type="text/css" media="screen">
        <link rel="stylesheet" href="assets/SharpCalendar/css/main.css" type="text/css" media="screen">
        <link rel="stylesheet" href="assets/img/weather-icons/css/weather-icons.min.css" type="text/css" media="screen">
        <!--/ END THEME STYLES -->

        <!-- START @IE SUPPORT -->
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="./assets/bower_components/html5shiv/dist/html5shiv.min.js"></script>
        <script src="./assets/bower_components/respond-minmax/dest/respond.min.js"></script>
        <![endif]-->
        <!--/ END IE SUPPORT -->
        <style type="text/css">
            #calendario{ font-size:13px !important;}
        </style>
    </head>

    <body class="page-session page-sound page-header-fixed page-sidebar-fixed demo-dashboard-session">

        <!--[if lt IE 9]>
        <p class="upgrade-browser">Upps!! You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/" target="_blank">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- START @WRAPPER -->
        <section id="wrapper">

            <!-- START @HEADER -->
            <?php require_once './navegacao.php'; ?>
            <!--/ END HEADER -->

            <!-- /#sidebar-left -->
            <?php require_once './menu.php'; ?>
            <!--/ END SIDEBAR LEFT -->

            <!-- START @PAGE CONTENT -->
            <section id="page-content">

                <!-- Start page header -->
                <div class="header-content">
                    <h2><i class="fa fa-home"></i>Dashboard </h2>
                    <div class="breadcrumb-wrapper hidden-xs">
                        <span class="label">Você está em:</span>
                        <ol class="breadcrumb">
                            <li class="active">Dashboard</li>
                        </ol>
                    </div>
                </div><!-- /.header-content -->
                <!--/ End page header -->

                <!-- Start body content -->
                <div class="body-content animated fadeIn">

                    <div class="row">
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="mini-stat clearfix bg-soundcloud rounded">
                                <span class="mini-stat-icon"><i class="fa fa-photo fg-bitbucket"></i></span>
                                <div class="mini-stat-info">
                                    <span><?= $site->getCount('slide') ?></span>
                                    Slides
                                </div>
                            </div>
                        </div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="mini-stat clearfix bg-twitter rounded">
                                <span class="mini-stat-icon"><i class="fa fa-bullhorn fg-bitbucket"></i></span>
                                <div class="mini-stat-info">
                                    <span><?= $site->getCount('depoimento') ?></span>
                                    Depoimentos
                                </div>
                            </div>
                        </div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="mini-stat clearfix bg-lilac rounded">
                                <span class="mini-stat-icon"><i class="fa fa-users fg-bitbucket"></i></span>
                                <div class="mini-stat-info">
                                    <span><?= $site->getCount('cliente') ?></span>
                                    Pais
                                </div>
                            </div>
                        </div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="mini-stat clearfix bg-lilac rounded">
                                <span class="mini-stat-icon"><i class="fa fa-users fg-bitbucket"></i></span>
                                <div class="mini-stat-info">
                                    <span><?= $site->getCount('padrinho') ?></span>
                                    Padrinhos
                                </div>
                            </div>
                        </div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="mini-stat clearfix bg-twitter rounded">
                                <span class="mini-stat-icon"><i class="fa fa-cart-plus fg-bitbucket"></i></span>
                                <div class="mini-stat-info">
                                    <span><?= $site->getCount('pagina') ?></span>
                                    Presentes
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="mini-stat clearfix bg-googleplus rounded">
                                <span class="mini-stat-icon"><i class="fa fa-picture-o  fg-bitbucket"></i></span>
                                <div class="mini-stat-info">
                                    <span><?= $site->getCount('portfolio') ?></span>
                                    Álbum de Fotos
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="mini-stat clearfix bg-bitbucket rounded">
                                <span class="mini-stat-icon"><i class="fa fa-user fg-bitbucket"></i></span>
                                <div class="mini-stat-info">
                                    <span><?= $site->getCount('usuario') ?></span>
                                    Usuários
                                </div>
                            </div>
                        </div>
                    </div><!-- /.row -->
                    <div class="row">
                        <div class="col-md-3">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-4 col-xs-12">
                                    <!-- Start weather widget -->
                                    <div class="widget-wrapper bg-theme rounded">
                                        <div class="weather-current-city">
                                            <img src="./assets/img/5.jpg" alt="..."/>
                                            <div id="weather"></div>
                                            <span class="current-day"> <?= utf8_encode(Format::agora()) ?> </span>
                                        </div><!-- /.weather-current-city -->
                                    </div><!-- /.widget-wrapper -->
                                    <div class="divider"></div><!-- /.widget-wrapper -->
                                </div>
                            </div>
                        </div> 
                        <div class="col-md-12" >
                            <div class="divided-50"></div>
                            <!-- DASHBOARD BATEPAPO TAWK.TO -->
                            <!--<iframe src="https://dashboard.tawk.to/login" name="chat" width="100%" height="1000" marginwidth="0" marginheight="0" Frameborder="0" align="center"></iframe> -->
                        </div>  
                    </div><!-- /.row -->
                </div><!-- /.body-content -->
                <?php require_once './footer.php'; ?>
            </section><!-- /#page-content -->
        </section><!-- /#wrapper -->
        <!--/ END WRAPPER -->

        <!-- START @BACK TOP -->
        <div id="back-top" class="animated pulse circle">
            <i class="fa fa-angle-up"></i>
        </div><!-- /#back-top -->
        <!--/ END BACK TOP -->

        <!-- START JAVASCRIPT SECTION (Load javascripts at bottom to reduce load time) -->
        <!-- START @CORE PLUGINS -->
        <script src="./assets/js/jquery.min.js"></script>
        <script src="./assets/js/jquery.simpleWeather.min.js"></script>
        <script src="./assets/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="./assets/js/underscore-min.js"></script>
        <script src="./assets/js/handlebars.js"></script>
        <script src="./assets/js/typeahead.bundle.min.js"></script>
        <script src="./assets/js/jquery.nicescroll.min.js"></script>
        <script src="./assets/js/index.js"></script>
        <script src="./assets/js/jquery.easing.1.3.min.js"></script>
        <script src="./assets/ionsound/ion.sound.min.js"></script>
        <script src="./assets/js/bootbox.js"></script>
        <!--/ END CORE PLUGINS -->

        <!-- START @PAGE LEVEL PLUGINS -->
        <script src="./assets/flot/jquery.flot.js"></script>
        <script src="./assets/flot/jquery.flot.spline.min.js"></script>
        <script src="./assets/flot/jquery.flot.categories.js"></script>
        <script src="./assets/flot/jquery.flot.tooltip.min.js"></script>
        <script src="./assets/flot/jquery.flot.resize.js"></script>
        <script src="./assets/flot/jquery.flot.pie.js"></script>
        <script src="./assets/js/jquery.gritter.min.js"></script>
        <script src="./assets/skycons-html5/skycons.js"></script>
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&amp;language=pt-BR"></script>
        <script type="text/javascript" src="./assets/js/gmap3.min.js"></script>
        <!--/ END PAGE LEVEL PLUGINS -->
        <script src="./assets/js/jstz.min.js"></script>
        <script src="assets/SharpCalendar/sharpCalendar/script/jquery.sharpCalendar.js"></script>
        <!-- libs -->
        <script src="assets/SharpCalendar/others/jquery.mousewheel.js"></script>
        <script src="assets/SharpCalendar/scripts/main.js"></script>
        <script src="assets/js/dark.dashboard.js"></script>

        <!-- START @PAGE LEVEL SCRIPTS -->
        <script src="./assets/js/apps.js"></script>
        <script>
            $('#home').addClass('active');
        </script>
        <script>
            $(".wrapper").SC({
                selectedDatesObj: 'selectedDates',
                animate: true,
                useWheel: true,
                vertical: true,
                sizes: 'auto',
                callbackDelay: 500,
                days: 5,
                months: 3,
                years: 1,
                invert: false,
                combineMonthYear: false,
                showDayArrows: false,
                showDayNames: false,
                monthNames: ["Jan", "Fev", "Mar", "Abr", "Maio", "Jun", "Jul", "Ago", "Set", "Out", "Nov", "Dez"],
                dayNames: ["Do", "Se", "Te", "Qa", "Qi", "Sx", "Sa"],
                doubleDigitsDays: true,
                allowSelectSpans: true,
                callback: function (cal) {
                    $(".log").html("<b>Selected date:</b><br><br>" + cal.currentDate);
                }
            });

            $(".wrapperHor").SC({
                selectedDatesObj: 'selectedDates',
                animate: true,
                useWheel: true,
                vertical: false,
                sizes: 'auto',
                callbackDelay: 500,
                days: 5,
                months: 3,
                years: 1,
                invert: false,
                combineMonthYear: false,
                showDayArrows: false,
                showDayNames: true,
                monthNames: ["Jan", "Fev", "Mar", "Abr", "Maio", "Jun", "Jul", "Ago", "Set", "Out", "Nov", "Dez"],
                dayNames: ["Do", "Se", "Te", "Qa", "Qi", "Sx", "Sa"],
                doubleDigitsDays: true,
                allowSelectSpans: true,
                callback: function (cal) {
                    $("#wtf").html("Selected date: " + cal.currentDate);
                }
            });

            $(document).ready(function () {
                $.simpleWeather({
                    location: 'São Paulo',
                    woeid: '',
                    unit: 'c',
                    success: function (weather) {
                        html = '<div class="row">';
                        html += '<div class="col-md-8 col-sm-8 col-xs-8">';
                        html += '<span class="current-city">' + weather.city + ', ' + weather.region + '</span>';
                        html += '<span class="current-temp">' + weather.temp + '&deg;' + weather.units.temp + '</span>';
                        html += '</div>';
                        html += '<div class="col-md-4 col-sm-4 col-xs-4">';
                        html += '<span class="current-day-icon">';
                        html += '<canvas  class="icon-' + weather.code + '" width="60" height="60"></canvas>';
                        html += '</span>';
                        html += '</div>';
                        html += '</div>';

                        $("#weather").html(html);
                    },
                    error: function (error) {
                        $("#weather").html('<p>' + error + '</p>');
                    }
                });
            });
            var GoogleMap = function () {
                return {
                    init: function () {
                        GoogleMap.mapStreetViewMarker();
                    },
                    mapStreetViewMarker: function () {
                        if ($('#map-street-view-marker').length) {
                            $('#map-street-view-marker').gmap3({
                                map: {
                                    options: {
                                        zoom: 18,
                                        center: new google.maps.LatLng(<?= $contato->contato_long_lat; ?>)
                                    }
                                }
                            });
                            var map = $('#map-street-view-marker').gmap3('get'),
                                    panorama = map.getStreetView();
                            panorama.setPosition(map.getCenter());
                            panorama.setPov({
                                heading: 265,
                                zoom: 1,
                                pitch: 0
                            });
                            panorama.setVisible(true);
                        }
                    }
                };
            }();
            GoogleMap.init();
        </script>
    </body>
    <!--/ END BODY -->

</html>