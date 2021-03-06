<?php
require_once './loader.php';
$site = new Site();
$site->getMeta();

$modulo_aparencia = new ModuloAparencia();
$modulo_aparencia->getModuloaparencia();

$topo = new Modulo1();
$topo->getModulo1();

$menu = new Modulo2();
$menu->getModulo2();

$sobre = new Modulo3();
$sobre->getModulo3();

$portfolio = new Modulo7();
$portfolio->getModulo7();

$contato = new Modulo9();
$contato->getModulo9();

$blog = new Modulo10();
$blog->getModulo10();

$pagina = new Pagina();
$pagina->getBlog();

?>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html>
    <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <?php require_once './analytics.php'; ?>
        <?php require_once './base.php'; ?>
        <!-- Basic Page Needs
        ================================================== -->
        <title><?= $site->site_meta_titulo ?></title>
        <meta name="description" content="<?= $site->site_meta_desc ?>">
        <meta name="keywords" content="<?= $site->site_meta_palavra ?>">
        <meta name="author" content="<?= $site->site_meta_autor ?>">
        <!-- Mobile Specific Metas
        ================================================== -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <!-- CSS
        ================================================== -->
        <!-- Bootstrap  -->
        <link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="fontawesome/css/font-awesome.min.css">
        <!-- web font  -->
        <link href='//fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
        <!-- plugin css  -->
        <link rel="stylesheet" type="text/css" href="js-plugin/animation-framework/animate.css" />
        <!-- Pop up-->
        <link rel="stylesheet" type="text/css" href="js-plugin/magnific-popup/magnific-popup.css" />
        <!-- Flex slider-->
        <link rel="stylesheet" type="text/css" href="js-plugin/flexslider/flexslider.css" />
        <!-- Owl carousel-->
        <link rel="stylesheet" href="js-plugin/owl.carousel/owl-carousel/owl.carousel.css">
        <link rel="stylesheet" href="js-plugin/owl.carousel/owl-carousel/owl.transitions.css">
        <link rel="stylesheet" href="js-plugin/owl.carousel/owl-carousel/owl.theme.css">
        <!-- icon fonts -->
        <link type="text/css" rel="stylesheet" href="font-icons/custom-icons/css/custom-icons.css">
        <link type="text/css" rel="stylesheet" href="font-icons/custom-icons/css/custom-icons-ie7.css">
        <!-- nekoAnim-->
        <link rel="stylesheet" type="text/css" href="js-plugin/appear/nekoAnim.css">
        <!-- Custom css -->
        <link type="text/css" rel="stylesheet" href="css/layout.css">
        <link type="text/css" id="colors" rel="stylesheet" href="css/<?= $modulo_aparencia->modulo_aparencia_cor ?>.css">
        <link type="text/css" rel="stylesheet" href="css/custom.css">
        <!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> <![endif]-->
        <script src="js/modernizr-2.6.1.min.js"></script>
        <!-- Favicons
        ================================================== -->
        <link rel="shortcut icon" href="admin/assets/img/ico/favicon.ico?<?= rand(0, 100) ?>">
		</head>
		<body class="header4 activateAppearAnimation" id="<?= $modulo_aparencia->modulo_aparencia_wide?>">
        <!-- Primary Page Layout 
        ================================================== -->
        <!-- globalWrapper -->
        <div id="globalWrapper">
            <!-- header -->
            <header class="navbar-fixed-top">
                <div id="mainHeader" role="banner">
                    <?php require_once './menu.php'; ?>
                </div>
            </header>
            <!-- header -->
            <!-- ======================================= content ======================================= -->
            <section id="page">
                <header class="page-header mb30">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <h1>Nossos Padrinhos</h1>
                                <ul class="breadcrumb visible-md visible-lg">
                                    <li><a href="home/"><?= stripslashes($menu->modulo2_nome) ?></a></li>
                                    <li class="active">Nossos Padrinhos</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </header>
                <section id="content" class="mt30 pb30">
                    <div class="container">
                        <div class="row">
                            <section class="col-md-12">
                                <h2><?= stripslashes($site->site_meta_titulo) ?></h2>

                                <div class="mb15">
                                    <div class="col-md-4">
                <!-- ==============================================
                 PADRINHOS DA NOIVA
                 =============================================== -->

                    <?php 
                    $equipe = new Modulo8();
                    $equipe->getModulo8();
                    ?>

                    <?php 
                    $padrinho = new Padrinho();
                    $padrinho->getPadrinhos();
					$padrinho->getPadrinhosNoiva();
                    ?>                
                    <?php if (isset($padrinho->db->data[0])): ?>
                        <section id="team5" class="pt40 pb40">
                            <div class="container">
                                <div class="row"> 
                                    <div class="col-md-12 mb40 text-center">
                                        <h1>Padrinhos da Noiva</h1>
                                        <h2 class="subTitle">Pessoas muito especiais que escolhemos com todo carinho e amor.</h2>
                                    </div>
                                    <section class="col-md-12">
                                        <div class="row mb15">
                                            <?php foreach ($padrinho->db->data as $e): ?>
                                                <div class="col-md-3 col-sm-6" data-nekoanim="slideInLeft" data-nekodelay="0">
                                                    <article>
                                                        <div><img src="thumb.php?w=320&h=320&zc=0&src=images/team/<?= $e->padrinho_imagem ?>" alt="" class="img-responsive"></div>
                                                        <div class="boxContent text-center">
                                                            <h3><?= stripslashes($e->padrinho_nome) ?></h3>
                                                            <h4><?= stripslashes($e->padrinho_subtitulo) ?><h4/>
															<p><?= stripslashes($e->padrinho_descricao) ?></p>
                                                        </div>
                                                    </article>
                                                </div>
                                            <?php endforeach; ?>
                                        </div>
                                    </section>
                                </div>
                            </div>
                        </section>
                    <?php endif; ?>
                <!-- ==============================================
                                FIM        PADRINHOS DA NOIVA
                 =============================================== -->
                <!-- ==============================================
                 PADRINHOS DO NOIVO
                 =============================================== -->

                    <?php 
                    $equipe = new Modulo8();
                    $equipe->getModulo8();
                    ?>

                    <?php 
                    $padrinho2 = new Padrinho();
                    $padrinho2->getPadrinhos();
					$padrinho2->getPadrinhosNoivo();
                    ?>                
                    <?php if (isset($padrinho->db->data[0])): ?>
                        <section id="team5" class="pt40 pb40">
                            <div class="container">
                                <div class="row"> 
                                    <div class="col-md-12 mb40 text-center">
                                        <h1>Padrinhos do Noivo</h1>
                                        <h2 class="subTitle">Pessoas muito especiais que escolhemos com todo carinho e amor.</h2>
                                    </div>
                                    <section class="col-md-12">
                                        <div class="row mb15">
                                            <?php foreach ($padrinho2->db->data as $e): ?>
                                                <div class="col-md-3 col-sm-6" data-nekoanim="slideInLeft" data-nekodelay="0">
                                                    <article>
                                                        <div><img src="thumb.php?w=320&h=320&zc=0&src=images/team/<?= $e->padrinho_imagem ?>" alt="" class="img-responsive"></div>
                                                        <div class="boxContent text-center">
                                                            <h3><?= stripslashes($e->padrinho_nome) ?></h3>
                                                            <h4><?= stripslashes($e->padrinho_subtitulo) ?><h4/>
															<p><?= stripslashes($e->padrinho_descricao) ?></p>
                                                        </div>
                                                    </article>
                                                </div>
                                            <?php endforeach; ?>
                                        </div>
                                    </section>
                                </div>
                            </div>
                        </section>
                    <?php endif; ?>
                <!-- ==============================================
                                FIM        PADRINHOS DO NOIVO
                 =============================================== -->

                <!-- ==============================================
                 DAMAS, PAGEM, FLORISTA
                 =============================================== -->

                    <?php 
                    $equipe = new Modulo8();
                    $equipe->getModulo8();
                    ?>

                    <?php 
                    $padrinho3 = new Padrinho();
                    $padrinho3->getPadrinhos();
					$padrinho3->getDamas();
                    ?>                
                    <?php if (isset($padrinho->db->data[0])): ?>
                        <section id="team5" class="pt40 pb40">
                            <div class="container">
                                <div class="row"> 
                                    <div class="col-md-12 mb40 text-center">
                                        <h1>Dama, Pagem e Florista</h1>
                                        <h2 class="subTitle">Pessoas muito especiais que escolhemos com todo carinho e amor.</h2>
                                    </div>
                                    <section class="col-md-12">
                                        <div class="row mb15">
                                            <?php foreach ($padrinho3->db->data as $e): ?>
                                                <div class="col-md-3 col-sm-6" data-nekoanim="slideInLeft" data-nekodelay="0">
                                                    <article>
                                                        <div><img src="thumb.php?w=320&h=320&zc=0&src=images/team/<?= $e->padrinho_imagem ?>" alt="" class="img-responsive"></div>
                                                        <div class="boxContent text-center">
                                                            <h3><?= stripslashes($e->padrinho_nome) ?></h3>
                                                            <h4><?= stripslashes($e->padrinho_subtitulo) ?><h4/>
															<p><?= stripslashes($e->padrinho_descricao) ?></p>
                                                        </div>
                                                    </article>
                                                </div>
                                            <?php endforeach; ?>
                                        </div>
                                    </section>
                                </div>
                            </div>
                        </section>
                    <?php endif; ?>
                <!-- ==============================================
                                FIM        DAMAS, PAGEM, FLORISTA
                 =============================================== -->				 				 
									
																		<!-- AddToAny BEGIN -->
									
									<div class="a2a_kit a2a_kit_size_32 a2a_default_style">
									<h2>Compartilhar</h2>
									<a class="a2a_dd" href="https://www.addtoany.com/share"></a>
									<a class="a2a_button_facebook"></a>
									<a class="a2a_button_twitter"></a>
									<a class="a2a_button_google_plus"></a>
									<a class="a2a_button_pinterest"></a>
									<a class="a2a_button_linkedin"></a>
									<a class="a2a_button_whatsapp"></a>
									<a class="a2a_button_email"></a>
									<a class="a2a_button_google_gmail"></a>
									</div>
									<script async src="https://static.addtoany.com/menu/page.js"></script>
									<!-- AddToAny END -->

                                </div>


                            </section>
                            <!--end page content-->
                        </div>
                    </div>
                </section>
            </section>
            <!-- content -->
            <!-- footer -->
            <footer id="footerWrapper" class="footer2">
                <?php require_once './footer.php'; ?>
            </footer>
            <!-- End footer -->
        </div>
        <!-- global wrapper -->
        <!-- End Document 
        ================================================== -->
        <script type="text/javascript" src="js-plugin/respond/respond.min.js"></script>
        <script type="text/javascript" src="js-plugin/jquery/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="js-plugin/jquery-ui/jquery-ui-1.8.23.custom.min.js"></script>
        <!-- third party plugins  -->
        <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
        <script type="text/javascript" src="js-plugin/easing/jquery.easing.1.3.js"></script>
        <!-- carousel -->
        <script type="text/javascript" src="js-plugin/owl.carousel/owl-carousel/owl.carousel.min.js"></script>
        <!-- pop up -->
        <script type="text/javascript" src="js-plugin/magnific-popup/jquery.magnific-popup.min.js"></script>
        <!-- appear -->
        <script type="text/javascript" src="js-plugin/appear/jquery.appear.js"></script>	
        <!-- Custom  -->
        <script type="text/javascript" src="js/custom.js"></script>
        <script>
            $('#equipe').addClass('active');
        </script>
    </body>
</html>
