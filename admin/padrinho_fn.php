<?php
require_once '../loader.php';
@session_start();
if ($_SESSION['LOGADO'] == FALSE) {
    @header('location:' . Validacao::getBase() . 'admin/logar/');
    exit;
}

function incluir() {
    $padrinho_nome = addslashes($_POST['padrinho_nome']);
    $padrinho_subtitulo = addslashes($_POST['padrinho_subtitulo']);
    $padrinho_descricao = addslashes($_POST['padrinho_descricao']);

    $padrinho = new Padrinho();
    $padrinho->padrinho_nome = $padrinho_nome;
    $padrinho->padrinho_subtitulo = $padrinho_subtitulo;
    $padrinho->padrinho_descricao = $padrinho_descricao;
    if (isset($_FILES['padrinho_imagem']['name']) && !empty($_FILES['padrinho_imagem']['name'])) {
        $padrinho->enviar();
    }
    $padrinho->incluir();
    Filter :: redirect("padrinho/");
}

function atualizar() {
    $atualizar = new Padrinho();
    $atualizar->padrinho_nome = addslashes($_POST['padrinho_nome']);
    $atualizar->padrinho_subtitulo = addslashes($_POST['padrinho_subtitulo']);
    $atualizar->padrinho_descricao = addslashes($_POST['padrinho_descricao']);
    $atualizar->padrinho_id  = intval($_POST['padrinho_id']);
    if (isset($_FILES['padrinho_imagem']['name']) && !empty($_FILES['padrinho_imagem']['name'])) {
        $atualizar->removerArquivo();
        $atualizar->enviar();
    }
    $atualizar->atualizar();
    Filter :: redirect("padrinho/?success");
}

function remover() {
    if (isset($_REQUEST['id'])) {
        $id = intval($_REQUEST['id']);
        $remover = new Padrinho();
        $remover->padrinho_id = "$id";
        $remover->removerArquivo();
        $remover->remover();
        Filter :: redirect("padrinho/?success");
    }
}

function Json() {
    if (isset($_REQUEST['padrinho_id'])) {
        $padrinho_id = intval($_REQUEST['padrinho_id']);
        $j = new Padrinho();
        $j->padrinho_id =  $padrinho_id;
        echo $j->JSON();
    }
}

if (isset($_REQUEST['acao']) && !empty($_REQUEST['acao'])) {
    $acao = $_REQUEST['acao'];
    if (function_exists($acao)) {
        $acao();
    }
}

