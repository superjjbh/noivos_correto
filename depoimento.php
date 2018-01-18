<?php
require_once './loader.php';
$site = new Site();
$site->getMeta();

$area = new Area();
$area->getAreas();

$modulo_aparencia = new ModuloAparencia();
$modulo_aparencia->getModuloaparencia();

$menu = new Modulo2();
$menu->getModulo2();

$contatos = new Contato();
$contatos->getContato();

$sobre = new Modulo3();
$sobre->getModulo3();

$portfolio = new Modulo7();
$portfolio->getModulo7();

$contato = new Modulo9();
$contato->getModulo9();

$blog = new Modulo10();
$blog->getModulo10();

$pagina_id = intval($_GET['id']);
$pagina = new Pagina();
$pagina->pagina_id = "$pagina_id";
$pagina->getPagina();
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
        <meta name="description" content="<?= $pagina->pagina_description ?>">
        <meta name="keywords" content="<?= $pagina->pagina_keywords ?>">
        <meta name="author" content="<?= $pagina->pagina_autor ?>">
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
                <!-- ==============================================
                                        TOPO
                    =============================================== -->
                <header class="page-header">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h1><?= stripslashes($blog->modulo10_nome) ?></h1>
                                <p><?= stripslashes($blog->modulo10_subtitulo) ?></p>
                                <ul class="breadcrumb visible-md visible-lg">
                                    <li><a href="home/">Home</a></li>
                                    <li><a href="blog/">Lista de Presentes</a></li>
                                    <li class="active">Presente</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </header>
                <!-- ==============================================
                                    FIM  TOPO
                 =============================================== -->
                <section id="content" class="pt30 mb30">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8">
                                <!-- ==============================================
                                                     POST
                                =============================================== -->

                                <!-- ==============================================
                                                   COMENTÁRIO
                                 =============================================== -->
                                <hr>
                                <section class="clearfix comments pt30">
                                    <h3 class="commentNumbers">Depoimentos</h3>

                      
                                <div class="row"><a name="depoimento">&nbsp;</a></div>
                                <?php  if (isset($_GET['success'])) :?>
                                    <br><br><Br>
                                    <br><br><Br>
                                        <h2 class='alert alert-success'><strong>Obrigado!</strong> Sua mensagem foi enviada.</h2>
                                    <br><br><Br>
                                <?php else: ?>
                                    <hr>
                                    <h3 class="commentNumbers">Deixe um depoimento</h3>
                                    <form method="post" action="depoimento_fn.php?acao=incluir" id="postComment" role="form">
                                        <div class="form-group">
                                            <label for="name">Nome</label>
                                            <input type="text" class="form-control" name="depoimento_nome" id="depoimento_nome" placeholder="Nome *"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="email">Parentesco</label>
                                            <input type="text" class="form-control"  name="depoimento_cargo" id="depoimento_cargo" placeholder="Parentesco *"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="comment">Depoimento</label>
                                            <textarea cols="5"  class="form-control" rows="5" name="depoimento_sobre" id="depoimento_sobre" placeholder="Depoimento *"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Foto</label>
                                            <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                                <div class="form-control" data-trigger="fileinput"><i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span></div>
                                                <span class="input-group-addon btn btn-success btn-file"><span class="fileinput-new">Selecione a Imagem</span><input type="file" id="depoimento_imagem" name="depoimento_imagem"></span>
                                            </div>
                                        </div>
                                        <button class="btn btn-primary" type="submit" name="submitComment">Enviar</button>
                                        <input type="hidden" name="depoimento_status" value="0">
                                    </form>
                                    <?php endif; ?>
                                </section>
                                <!-- ==============================================
                                                  FIM  COMENTÁRIO
                                  =============================================== -->
                            </div>
                            <!-- Sidebar -->
                            <aside class="col-md-4">
                                <!-- ==============================================
                                                     BUSCA
                                  =============================================== -->
                                <?php require_once './form_busca.php'; ?>
                                <!-- ==============================================
                                                  FIM  BUSCA
                                  =============================================== -->

                                <!-- ==============================================
                                                 MENU CATEGORIA
                                 =============================================== -->
                                <?php require_once './menu_categoria.php'; ?>
                                <!-- ==============================================
                                                FIM  MENU CATEGORIA
                                =============================================== -->
                            </aside>
                            <!-- Sidebar -->
                        </div><!-- row -->
                    </div><!-- container -->
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
        <!-- appear -->
        <script type="text/javascript" src="js-plugin/appear/jquery.appear.js"></script>	
        <!-- Custom  -->
        <script type="text/javascript" src="js/custom.js"></script>
        <script>
            $('#posts').addClass('active');
        </script>
    </body>
</html>
