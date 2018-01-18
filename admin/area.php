<?php
require_once '../loader.php';
@session_start();
if (!isset($_SESSION['LOGADO']) || $_SESSION['LOGADO'] == FALSE) {
    @header('location:' . Validacao::getBase() . 'admin/logar/');
    exit;
}
$site = new Site();
$site->getMeta();
$area = new Area();
$area->db = new DB;
$area->db->url = "categoria/post";
$area->db->paginate(12);
$area->getAreas();
?>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

    <!-- START @HEAD -->
    <head>
        <?php require_once './base.php'; ?>
        <!-- START @META SECTION -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <title><?= $site->site_meta_titulo ?></title>
        <!--/ END META SECTION -->

        <!-- START @FAVICONS -->
        <link href="./assets/img/ico/favicon.ico?<?= rand(0, 100) ?>" rel="shortcut icon" sizes="144x144">
        <!--/ END FAVICONS -->

        <!-- START @FONT STYLES -->
        <link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700" rel="stylesheet">
        <link href='//fonts.googleapis.com/css?family=Architects+Daughter' rel='stylesheet' type='text/css'>
        <!--/ END FONT STYLES -->

        <!-- START @GLOBAL MANDATORY STYLES -->
        <link href="./assets/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!--/ END GLOBAL MANDATORY STYLES -->

        <!-- START @PAGE LEVEL STYLES -->
        <link href="./assets/fontawesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="./assets/css/animate.min.css" rel="stylesheet">
        <link href="./assets/css/dataTables.bootstrap.css" rel="stylesheet">
        <link href="./assets/css/datatables.responsive.css" rel="stylesheet">
        <link href="./assets/css/fuelux.min.css" rel="stylesheet">
        <!--/ END PAGE LEVEL STYLES -->

        <!-- START @THEME STYLES -->
        <link href="./assets/css/reset.css" rel="stylesheet">
        <link href="./assets/css/layout.css" rel="stylesheet">
        <link href="./assets/css/components.css" rel="stylesheet">
        <link href="./assets/css/plugins.css" rel="stylesheet">
        <link href="./assets/css/themes/default.theme.css" rel="stylesheet" id="theme">
        <link href="./assets/css/custom.css" rel="stylesheet">
        <link href="./assets/css/jquery.rtnotify.css" rel="stylesheet">
        <link href="./assets/css/noty_theme_default.css" rel="stylesheet">
        <!--/ END THEME STYLES -->

        <!-- START @IE SUPPORT -->
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="./assets/js/html5shiv.min.js"></script>
        <script src="./assets/js/respond.min.js"></script>
        <![endif]-->
        <!--/ END IE SUPPORT -->
    </head>
    <!--/ END HEAD -->
    <body>
        <!--[if lt IE 9]>
        <p class="upgrade-browser">Upps!! You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/" target="_blank">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- START @WRAPPER -->
        <section id="wrapper" class="page-sound">

            <!-- START @HEADER -->
            <?php require_once './navegacao.php'; ?> <!-- /#header -->
            <!--/ END HEADER -->

            <!-- /#sidebar-left -->
            <?php require_once './menu.php'; ?>
            <!--/ END SIDEBAR LEFT -->

            <!-- START @PAGE CONTENT -->
            <section id="page-content">

                <!--modal -->

                <!--modal -->


                <!-- Start page header -->
                <div class="header-content">
                    <h2><i class="fa fa-pencil"></i> <span>Gerenciar Categoria </span></h2>
                    <div class="breadcrumb-wrapper hidden-xs">
                        <span class="label">Você está em :</span>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-home"></i>
                                <a href="index.php">Dashboard</a>
                                <i class="fa fa-angle-right"></i>
                            </li>
                            <li>
                                <a href="#">Categoria</a>
                                <i class="fa fa-angle-right"></i>
                            </li>
                        </ol>
                    </div><!-- /.breadcrumb-wrapper -->
                </div><!-- /.header-content -->
                <!--/ End page header -->

                <!-- Start body content -->
                <div class="body-content animated fadeIn">

                    <div class="row">
                        <div class="col-md-12">

                            <!-- Start datatable using ajax -->
                            <div class="panel rounded shadow">
                                <div class="panel-heading">
                                    <div class="pull-left">
                                        <h3 class="panel-title"><button class="btn btn-primary" data-toggle="modal" data-target="#incluir"><i class="fa fa-plus-circle"></i> Nova Categoria</button></h3>
                                    </div>
                                    <div class="clearfix"></div>
                                </div><!-- /.panel-heading -->
                                <div class="panel-body">
                                    <!-- Start datatable -->
                                    <table id="datatable-ajax" class="table table-striped table-primary">
                                        <thead>
                                            <tr>
                                                <th data-class="expand">Categoria</th>
                                                <th data-hide="phone">Ações</th>
                                            </tr>
                                        </thead>
                                        <!--tbody section is required-->
                                        <tbody id="galeria">
                                            <?php if (isset($area->db->data[0])): ?>
                                                <?php foreach ($area->db->data as $categoria): ?>
                                                    <tr id="li_<?= $categoria->area_id ?>">
                                                        <td><?= stripslashes($categoria->area_nome) ?></td>
                                                        <td style="width: 20%;">
                                                            <a class="btn btn-circle btn-info atualizar" data-update="<?= $categoria->area_id ?>" >
                                                                <i class="fa fa-edit icon-white"></i>
                                                            </a>
                                                            <a class="btn btn-circle btn-danger delete" data-url="area_fn.php?acao=remover&AMP;id=<?= $categoria->area_id ?>">
                                                                <i class="fa fa-trash icon-white"></i>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                <?php endforeach; ?>
                                            <?php endif; ?>
                                        </tbody>
                                    </table>
                                    <?= $area->db->paginacao ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </section>

        <!--***************MODAL INCLUIR*****************-->
        <div class="modal fade" id="incluir" tabindex="-1" role="dialog"  aria-hidden="true">
            <div class="modal-dialog panel panel-primary">
                <div class="modal-content ">
                    <div class="panel-heading">
                        <button type="button" class="close" data-dismiss="modal">×</button>
                        <h3 class="panel-title text-center">Adicionar nova Categoria</h3>
                    </div>
                    <div class="modal-header ">
                        <form role="form" method="post"  action="area_fn.php?acao=incluir">
                            <div class="form-group">
                                <label for="area_nome">Categoria:</label>
                                <input type="text" class="form-control"  name="area_nome" data-toggle="tooltip" data-placement="bottom" title="Informe a Categoria..."  required />
                            </div>

                            <div class="form-group">
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-primary">Cadastrar</button>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--***************MODAL INCLUIR*****************-->

        <!--***************MODAL ATUALIZAR*****************-->
        <div class="modal fade" id="modal-16" tabindex="-1" role="dialog"  aria-hidden="true">
            <div class="modal-dialog panel panel-primary">
                <div class="modal-content ">
                    <div class="panel-heading">
                        <button type="button" class="close" data-dismiss="modal">×</button>
                        <h3 class="panel-title text-center">Editar Categoria</h3>
                    </div>
                    <div class="modal-header ">
                        <form role="form" method="post"  action="area_fn.php?acao=atualizar">
                            <div class="form-group">
                                <label for="area_nome">Categoria:</label>
                                <input type="text" class="form-control"  name="area_nome" id="area_nome" data-toggle="tooltip" data-placement="bottom" title="Informe a Categoria..." value="<?= stripslashes($area->area_nome) ?>" required />
                                <input type="hidden" id="area_id"  name="area_id" value="<?= $area->area_id ?>">
                            </div>

                            <div class="form-group">
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-primary">Atualizar</button>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--***************MODAL ATUALIZAR*****************-->

        <!--***************MODAL REMOVER*****************-->
        <div class="modal fade" id="MODALREMOVE" tabindex="-1" role="dialog"  aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">×</button>
                        <h4 class="text-center text-danger">Atenção!</h4>
                        <p class="text-center text-danger">
                            Você está prestes à excluir um registro de forma permanente.<br />
                            Deseja realmente executar este procedimento?
                        </p>
                        <p class="text-center">
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="glyphicon glyphicon-remove-circle"></i> Cancelar</button>
                            <button type="button" class="btn btn-danger" id="btn-confirm-remove"><i class="glyphicon glyphicon-ok-circle"></i> Remover</button>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!--***************MODAL REMOVER*****************-->
        <!-- START @BACK TOP -->
        <div id="back-top" class="animated pulse circle">
            <i class="fa fa-angle-up"></i>
        </div><!-- /#back-top -->
        <!--/ END BACK TOP -->
        <!-- START JAVASCRIPT SECTION (Load javascripts at bottom to reduce load time) -->
        <!-- START @CORE PLUGINS -->
        <script src="./assets/js/jquery.min.js"></script>
        <script src="./assets/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="./assets/js/handlebars.js"></script>
        <script src="./assets/js/typeahead.bundle.min.js"></script>
        <script src="./assets/js/jquery.nicescroll.min.js"></script>
        <script src="./assets/js/index.js"></script>
        <script src="./assets/js/jquery.easing.1.3.min.js"></script>
        <script src="./assets/ionsound/ion.sound.min.js"></script>
        <script src="./assets/js/bootbox.js"></script>
        <!--/ END CORE PLUGINS -->

        <!-- START @PAGE LEVEL PLUGINS -->
        <script src="./assets/js/jquery.dataTables.min.js"></script>
        <script src="./assets/js/dataTables.bootstrap.js"></script>
        <script src="./assets/js/datatables.responsive.js"></script>
        <script src="./assets/js/fuelux.min.js"></script>
        <script src="./assets/js/jquery.rtnotify.js"></script>
        <script src="./assets/js/masonry.pkgd.min.js"></script>
        <script src="./assets/js/jquery-ui.custom.min.js"></script>
        <!--/ END PAGE LEVEL PLUGINS -->

        <!-- START @PAGE LEVEL SCRIPTS -->
        <script src="./assets/js/apps.js"></script>
        <!--/ END PAGE LEVEL SCRIPTS -->
        <!--/ END JAVASCRIPT SECTION -->


        <!-- START GOOGLE ANALYTICS -->
        <script>
<?php if (isset($_GET['success'])): ?>
                $(document).ready(function () {
                    $.rtnotify({title: "Procedimento Realizado",
                        type: "default"});
                });
<?php endif; ?>
            $('.categoria').addClass('active');

            $('.atualizar').on('click', function () {
                var id = $(this).attr('data-update');
                $('#area_id').val(id);
                var url = "area_fn.php?acao=Json";
                $.getJSON(url, {area_id: id}, function (data) {
                    //console.log(data);
                    $('#modal-16  #area_id').val(data.area_id);
                    $('#modal-16  #area_nome').val(data.area_nome);
                });
                $('#modal-16').modal('show');
            });

            $('.delete').on('click', function () {
                var url = $(this).attr('data-url');
                $('#MODALREMOVE').modal('show');
                $('#btn-confirm-remove').on('click', function () {
                    window.location = url;
                });
            });

            $(function () {
                reloadActions();
            });
            function reloadActions() {
                var sortedIDs = $(".selector").sortable("toArray");
                $("#galeria").sortable({opacity: 0.6, cursor: "move",
                    stop: function (event, ui) {
                        var ids = $("#galeria").sortable("toArray");
                        var url = 'area_fn.php?acao=posicao';
                        $.post(url, {item: ids}, function (data) {
                            //console.log(data);
                        });
                    }
                });
            }

        </script>
        <!--/ END GOOGLE ANALYTICS -->

    </body>
    <!--/ END BODY -->

</html>