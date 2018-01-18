<?php
require_once '../loader.php';
@session_start();
if ($_SESSION['LOGADO'] == FALSE) {
    @header('location:' . Validacao::getBase() . 'admin/logar/');
    exit;
}

function incluir() {
    $cliente2_nome = addslashes($_POST['cliente2_nome']);
    $cliente2_subtitulo = addslashes($_POST['cliente2_subtitulo']);
    $cliente2_descricao = addslashes($_POST['cliente2_descricao']);

    $cliente2 = new Cliente2();
    $cliente2->cliente2_nome = $cliente2_nome;
    $cliente2->cliente2_subtitulo = $cliente2_subtitulo;
    $cliente2->cliente2_descricao = $cliente2_descricao;
    if (isset($_FILES['cliente2_imagem']['name']) && !empty($_FILES['cliente2_imagem']['name'])) {
        $cliente2->enviar();
    }
    $cliente2->incluir();
    Filter :: redirect("padrinho/");
}

function atualizar() {
    $atualizar = new Cliente2();
    $atualizar->cliente2_nome = addslashes($_POST['cliente2_nome']);
    $atualizar->cliente2_subtitulo = addslashes($_POST['cliente2_subtitulo']);
    $atualizar->cliente2_descricao = addslashes($_POST['cliente2_descricao']);
    $atualizar->cliente2_id  = intval($_POST['cliente2_id']);
    if (isset($_FILES['cliente2_imagem']['name']) && !empty($_FILES['cliente2_imagem']['name'])) {
        $atualizar->removerArquivo();
        $atualizar->enviar();
    }
    $atualizar->atualizar();
    Filter :: redirect("padrinho/?success");
}

function remover() {
    if (isset($_REQUEST['id'])) {
        $id = intval($_REQUEST['id']);
        $remover = new Cliente2();
        $remover->cliente2_id = "$id";
        $remover->removerArquivo();
        $remover->remover();
        Filter :: redirect("padrinho/?success");
    }
}

function Json() {
    if (isset($_REQUEST['cliente2_id'])) {
        $cliente2_id = intval($_REQUEST['cliente2_id']);
        $j = new Cliente2();
        $j->cliente2_id =  $cliente2_id;
        echo $j->JSON();
    }
}

if (isset($_REQUEST['acao']) && !empty($_REQUEST['acao'])) {
    $acao = $_REQUEST['acao'];
    if (function_exists($acao)) {
        $acao();
    }
}

