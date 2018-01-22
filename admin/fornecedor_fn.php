<?php
require_once '../loader.php';
@session_start();
if ($_SESSION['LOGADO'] == FALSE) {
    @header('location:' . Validacao::getBase() . 'admin/logar/');
    exit;
}

function incluir() {
    $fornecedor_nome = addslashes($_POST['fornecedor_nome']);
    $fornecedor_subtitulo = addslashes($_POST['fornecedor_subtitulo']);
    $fornecedor_descricao = addslashes($_POST['fornecedor_descricao']);

    $fornecedor = new Fornecedor();
    $fornecedor->fornecedor_nome = $fornecedor_nome;
    $fornecedor->fornecedor_subtitulo = $fornecedor_subtitulo;
    $fornecedor->fornecedor_descricao = $fornecedor_descricao;
    if (isset($_FILES['fornecedor_imagem']['name']) && !empty($_FILES['fornecedor_imagem']['name'])) {
        $fornecedor->enviar();
    }
    $fornecedor->incluir();
    Filter :: redirect("fornecedor/");
}

function atualizar() {
    $atualizar = new Fornecedor();
    $atualizar->fornecedor_nome = addslashes($_POST['fornecedor_nome']);
    $atualizar->fornecedor_subtitulo = addslashes($_POST['fornecedor_subtitulo']);
    $atualizar->fornecedor_descricao = addslashes($_POST['fornecedor_descricao']);
    $atualizar->fornecedor_id  = intval($_POST['fornecedor_id']);
    if (isset($_FILES['fornecedor_imagem']['name']) && !empty($_FILES['fornecedor_imagem']['name'])) {
        $atualizar->removerArquivo();
        $atualizar->enviar();
    }
    $atualizar->atualizar();
    Filter :: redirect("fornecedor/?success");
}

function remover() {
    if (isset($_REQUEST['id'])) {
        $id = intval($_REQUEST['id']);
        $remover = new Fornecedor();
        $remover->fornecedor_id = "$id";
        $remover->removerArquivo();
        $remover->remover();
        Filter :: redirect("fornecedor/?success");
    }
}

function Json() {
    if (isset($_REQUEST['fornecedor_id'])) {
        $fornecedor_id = intval($_REQUEST['fornecedor_id']);
        $j = new Fornecedor();
        $j->fornecedor_id =  $fornecedor_id;
        echo $j->JSON();
    }
}

if (isset($_REQUEST['acao']) && !empty($_REQUEST['acao'])) {
    $acao = $_REQUEST['acao'];
    if (function_exists($acao)) {
        $acao();
    }
}

