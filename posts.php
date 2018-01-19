<?php
require_once './loader.php';
$site = new Site();
$site->getMeta();

$modulo_aparencia = new ModuloAparencia();
$modulo_aparencia->getModuloaparencia();

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

$projeto = new Portfolio();
$projeto->getPortfolios();

$categoria_portfolio = new Area1();
$categoria_portfolio->db = new DB;
$categoria_portfolio->getAreas1();

$categoria_blog = new Area();
$categoria_blog->getAreas();

$pagina = new Pagina();
$pagina->db->url = "blog/";
$pagina->db->paginate($blog->modulo10_paginacao);
$pagina->getPaginas();
$pagina->getBlog();


?>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
    <!--<![endif]-->
    <head>
        <?php require_once './analytics.php'; ?>
        <?php require_once './base.php'; ?>
        <!-- Basic Page Needs
        ================================================== -->
        <meta charset="utf-8">
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
    <body class="activateAppearAnimation" id="<?= $modulo_aparencia->modulo_aparencia_wide?>">
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
                <header class="page-header">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h1>Lista de Presentes</h1>
                                <ul class="breadcrumb visible-md visible-lg">
                                    <li><a href="home/">Home</a></li>
                                    <li><a href="javascript:void(0);">Lista de Presentes</a></li>
                                    <li class="active">Presentes</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </header>
                <section id="content">
                    <section class="pt30 pb30"> 
                        <div class="container clearfix">
                            <div class="row">
                                <!-- ======================================= CATEGORIAS ======================================= -->
                                <nav id="filter" class="span12 text-center">
                                    <div class="btn-group">
                                        <a href="" class="btn btn-default" data-filter="*">Todos</a>
                                        <?php if (isset($categoria_blog->db->data[0])): ?>
                                            <?php foreach ($categoria_blog->db->data as $categoria): ?>
                                                <a href="javascript:void(0)" class="btn btn-default" data-filter=".<?= Filter::slug2(trim($categoria->area_nome)) ?>"><?= stripslashes($categoria->area_nome) ?></a>
                                            <?php endforeach; ?>
                                        <?php endif; ?>
                                    </div>
                                </nav>
                                <!-- ======================================= CATEGORIAS ======================================= -->
                                <div class="portfolio-items  isotopeWrapper clearfix imgHover" id="3">
                                    <!-- presentes item -->
                                    <?php if (isset($pagina->db->data[0])): ?>
                                        <?php foreach ($pagina->db->data as $trabalhos): ?>
                                            <article class="col-sm-4 isotopeItem <?= Filter::slug2(trim($trabalhos->area_nome)) ?>">
                                                <div class="pinBox">
                                                    <img alt="" src="thumb.php?w=370&h=250&zc=0&src=images/blog/<?= $trabalhos->pagina_imagem ?>" class="img-responsive">
                                                    <div class="mediaHover">
                                                        <div class="mask"></div>
                                                        <div class="iconLinks"> 
                                                            <a href="blog/<?= Filter::slug2($trabalhos->pagina_nome) ?>/<?= $trabalhos->pagina_id ?>/">
                                                                <i class="icon-link iconRounded iconMedium"></i>
                                                                <span>ver presente</span>
                                                            </a> 
                                                            <a href="images/blog/<?= $trabalhos->pagina_imagem ?>" class="image-link"  >
                                                                <i class="icon-search iconRounded iconMedium"></i>
                                                                <span>ampliar</span>
                                                            </a> 
                                                        </div>
                                                    </div>

                                                    <section class="boxContent">
                                                        <h3><?= stripslashes($trabalhos->pagina_nome) ?></h3>
														<h2><?= stripslashes($trabalhos->pagina_autor) ?></h2>
                                                        <p> <?= stripslashes(Validacao::cut($trabalhos->pagina_descricao, 100, '...')) ?> <br />
                                                            <a href="blog/<?= Filter::slug2($trabalhos->pagina_nome) ?>/<?= $trabalhos->pagina_id ?>/" class="moreLink">Detalhes do Presente...</a>
                                                        </p>
                                                    </section>
                                                </div>
                                            </article>
                                            <!-- portfolio item -->
                                        <?php endforeach; ?>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </section>
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
        <!-- flex slider -->
        <script type="text/javascript" src="js-plugin/flexslider/jquery.flexslider-min.js"></script>
        <!-- isotope -->
        <script type="text/javascript" src="js-plugin/isotope/jquery.isotope.min.js"></script>
        <script type="text/javascript" src="js-plugin/isotope/jquery.isotope.sloppy-masonry.min.js"></script>
        <!-- sharrre -->
        <script type="text/javascript" src="js-plugin/jquery.sharrre-1.3.4/jquery.sharrre-1.3.4.min.js"></script>
        <!-- appear -->
        <script type="text/javascript" src="js-plugin/appear/jquery.appear.js"></script>	
        <!-- Custom  -->
        <script type="text/javascript" src="js/custom.js"></script>
        <script>
            $('#posts').addClass('active');
        </script>
    </body>
</html>
