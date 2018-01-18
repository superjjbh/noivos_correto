<?php
require_once '../loader.php';
@session_start();
if ($_SESSION['LOGADO'] == FALSE) {
    @header('location:' . Validacao::getBase() . 'admin/logar/');
    exit;
}

function incluir() {
    $cliente2_nome = addslashes($_POST['cliente2_nome']);
    $cliente2_subtitulo = addslashes($_POST['cliente_subtitulo']);
    $cliente2_descricao = addslashes($_POST['cliente_descricao']);

    $cliente2 = new Cliente2();
    $cliente2->cliente2_nome = $cliente2_nome;
    $cliente2->cliente_subtitulo = $cliente2_subtitulo;
    $cliente2->cliente_descricao = $cliente2_descricao;
    if (isset($_FILES['cliente_imagem']['name']) && !empty($_FILES['cliente_imagem']['name'])) {
        $cliente2->enviar();
    }
    $cliente2->incluir();
    Filter :: redirect("equipe/");
}

function atualizar() {
    $atualizar = new Cliente2();
    $atualizar->cliente2_nome = addslashes($_POST['cliente2_nome']);
    $atualizar->cliente_subtitulo = addslashes($_POST['cliente_subtitulo']);
    $atualizar->cliente_descricao = addslashes($_POST['cliente_descricao']);
    $atualizar->cliente_id  = intval($_POST['cliente_id']);
    if (isset($_FILES['cliente_imagem']['name']) && !empty($_FILES['cliente_imagem']['name'])) {
        $atualizar->removerArquivo();
        $atualizar->enviar();
    }
    $atualizar->atualizar();
    Filter :: redirect("equipe/?success");
}

function remover() {
    if (isset($_REQUEST['id'])) {
        $id = intval($_REQUEST['id']);
        $remover = new Cliente2();
        $remover->cliente_id = "$id";
        $remover->removerArquivo();
        $remover->remover();
        Filter :: redirect("equipe/?success");
    }
}

function Json() {
    if (isset($_REQUEST['cliente_id'])) {
        $cliente2_id = intval($_REQUEST['cliente_id']);
        $j = new Cliente2();
        $j->cliente_id =  $cliente2_id;
        echo $j->JSON();
    }
}

if (isset($_REQUEST['acao']) && !empty($_REQUEST['acao'])) {
    $acao = $_REQUEST['acao'];
    if (function_exists($acao)) {
        $acao();
    }
}

