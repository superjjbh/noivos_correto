<?php
require_once './loader.php';
$site = new Site();
$site->getMeta();


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

$portfolio = new Portfolio();

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
                                <?php if (isset($pagina->db->data[0])): ?>
                                    <?php foreach ($pagina->db->data as $post): ?>
                                        <article class="post clearfix">
                                            <div class="postPic">
                                                <div class="imgBorder mb15">
                                                    <a href="javascript:void(0);" style="cursor:default"><img src="thumb.php?w=750&h=500&src=images/blog/<?= $post->pagina_imagem ?>" alt="" class="img-responsive"/></a>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <section class="col-sm-11 col-xs-10">
                                                    <h2><?= stripslashes($pagina->pagina_nome) ?></h2>
													<h2>R$ <?= stripslashes($post->pagina_autor) ?></h2>
                                                    <?php $data = explode("/", $pagina->pagina_data) ?>
                                                    <ul class="entry-meta">
                                                        <li class="entry-category"><a href="javascript:void(0);" style="cursor:default"><i class="icon-th-list"></i>&nbsp;<?= stripslashes($post->area_nome) ?></a></li>
                                                        <li class="entry-author"><a href="javascript:void(0);" style="cursor:default"><i class="icon-money"></i>&nbsp;<?= stripslashes($post->pagina_autor) ?></a></li>
                                                        <li class="entry-comments"><a href="javascript:void(0);" style="cursor:default"><i class="icon-comment-1"></i>&nbsp;<?= $pagina->CountComentario($post->pagina_id) ?> Comentários</a></li>
                                                    </ul>
                                                    <p><?= $post->pagina_descricao ?></p>
													<h2>Presentear On-line</h2>
													<form target="pagseguro" method="post" action="https://pagseguro.uol.com.br/checkout/checkout.jhtml" id="contactfrm" role="form">
													  <input type="hidden" name="email_cobranca" value="<?= $contatos->contato_telefone6 ?>" />
													  <input type="hidden" name="tipo" value="CBR" />
													  <input type="hidden" name="moeda" value="BRL" />
													  <input type="hidden" name="item_id" value="<?= stripslashes($pagina->pagina_id) ?>" />
													  <input type="hidden" name="item_descr" value="<?= stripslashes($pagina->pagina_nome) ?>" />
													  
													  <input type="hidden" name="item_valor" value="<?= stripslashes($post->pagina_autor) ?>" />
													  <input type="hidden" name="frete" value="0" />
													  <input type="hidden" name="item_quant" value="1" />

														<div class="result"></div>
														<button name="submit" type="submit" class="btn btn-primary" id="submit"> COMPRAR</button>

													</form>
													<br>
													<img src="https://stc.pagseguro.uol.com.br/public/img/banners/pagamento/todos_estatico_550_100.gif" alt="Logotipos de meios de pagamento do PagSeguro" title="Este site aceita pagamentos com as principais bandeiras e bancos, saldo em conta PagSeguro e boleto." class="img-responsive">
													<h2>Compartilhar</h2>
													<!-- AddToAny BEGIN -->
													<div class="a2a_kit a2a_kit_size_32 a2a_default_style">
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

                                                </section>
                                            </div>
                                        </article>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                                <!-- ==============================================
                                                   FIM  POST
                                 =============================================== -->
                                <!-- ==============================================
                                                   COMENTÁRIO
                                 =============================================== -->
                                <hr>
                                <section class="clearfix comments pt30">
                                    <h3 class="commentNumbers">Comentários (<?= $pagina->CountComentario($post->pagina_id) ?>)</h3>
                                    <?php $comentario = new Comment(); ?>
                                    <?php $comentario->getCommentPost($pagina_id) ?>
                                    <?php if (isset($comentario->db->data[0])): ?>
                                        <?php foreach ($comentario->db->data as $c): ?>
                                            <div class="media"> <a class="pull-left" href="#">
                                                    <div class="imgWrapper"><img src="images/avatar.png" alt="" /></div>
                                                </a>
                                                <div class="media-body">
                                                    <div class="clearfix">
                                                        <h4 class="media-heading"><?= stripslashes($c->comentario_nome) ?></h4>
                                                        <?php $dc = explode("/", $pagina->pagina_data) ?>
                                                        <div class="commentInfo"> <span><?= $dc[0] ?> <?= $dc[1] ?>, <?= $dc[2] ?></span> <a href="javascript:void(0);"></a> </div>
                                                    </div>
                                                    <?= stripslashes($c->comentario_mensagem) ?>
                                                    <!-- Nested media object -->
                                                </div>
                                            </div>
                                        <?php endforeach; ?>
                                    <?php endif; ?>

                      
                                <div class="row"><a name="comentario">&nbsp;</a></div>
                                <?php  if (isset($_GET['success'])) :?>
                                    <br><br><Br>
                                    <br><br><Br>
                                        <h2 class='alert alert-success'><strong>Obrigado!</strong> Sua mensagem foi enviada.</h2>
                                    <br><br><Br>
                                <?php else: ?>
                                    <hr>
                                    <h3 class="commentNumbers">Deixe um comentário</h3>
                                    <form method="post" action="comentario_fn.php?acao=incluir" id="postComment" role="form">
                                        <div class="form-group">
                                            <label for="name">Name</label>
                                            <input type="text" class="form-control" name="comentario_nome" id="name" placeholder="Nome *"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input type="email" class="form-control"  name="comentario_email" id="email" placeholder="Email *"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="comment">Comentário</label>
                                            <textarea cols="5"  class="form-control" rows="5" name="comentario_mensagem" id="comment" placeholder="Comentário *"></textarea>
                                        </div>
                                        <button class="btn btn-primary" type="submit" name="submitComment">Enviar</button>
                                        <input type="hidden" name="pagina_nome" value="<?= Filter::slug2($pagina->pagina_nome) ?>">
                                        <input type="hidden" id="comentario_pagina" name="comentario_pagina" value="<?= $pagina_id ?>">
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
                                                 MENU CATEGORIA
                                 =============================================== -->
                                <?php require_once './menu_categoria.php'; ?>
                                <!-- ==============================================
                                                FIM  MENU CATEGORIA
                                =============================================== -->
								<h3>Últimos Presentes</h3>
								<br>
								<ul class="list-unstyled worksList">
									<?php $pagina->getUltimos() ?>
									<?php if (isset($pagina->db->data[0])): ?>
										<?php foreach ($pagina->db->data as $work) : ?>
											<li><a href="blog/<?= Filter::slug2($work->pagina_nome) ?>/<?= $work->pagina_id ?>/" class="tips" title="" data-original-title="<?= stripslashes($work->pagina_nome) ?>"><img src="thumb.php?w=70&h=70&zc=1&src=images/blog/<?= $work->pagina_imagem ?>" alt="..."></a></li>
										<?php endforeach; ?>
									<?php endif; ?>

								</ul>
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
