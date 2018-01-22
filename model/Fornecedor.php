<?php

/*
 * @author phpstaff.com.br
 */

require_once 'Controle.php';

class Fornecedor extends Controle {

    public $bd;
    public $fornecedor_id;
    public $fornecedor_nome;
    public $fornecedor_subtitulo;
    public $fornecedor_descricao;
    public $fornecedor_imagem;
    public $result;

    public function __construct() {
        parent::__construct();
    }

    public function incluir() {
        $this->insert("fornecedor", "fornecedor_nome, fornecedor_subtitulo, fornecedor_descricao,  fornecedor_imagem", "'$this->fornecedor_nome','$this->fornecedor_subtitulo', '$this->fornecedor_descricao', '$this->fornecedor_imagem'");
    }

    public function atualizar() {
        if ($this->fornecedor_imagem != "") {
            $this->update("fornecedor", "fornecedor_nome = '$this->fornecedor_nome', fornecedor_subtitulo = '$this->fornecedor_subtitulo',fornecedor_descricao = '$this->fornecedor_descricao'"
                    . ",fornecedor_imagem = '$this->fornecedor_imagem'", "fornecedor_id = '$this->fornecedor_id'");
        } else {
            $this->update("fornecedor", "fornecedor_nome = '$this->fornecedor_nome', fornecedor_subtitulo = '$this->fornecedor_subtitulo', fornecedor_descricao = '$this->fornecedor_descricao'", "fornecedor_id = '$this->fornecedor_id'");
        }
    }

    public function remover() {
        $this->delete("fornecedor", "fornecedor_id = '$this->fornecedor_id'");
    }

    public function removerArquivo() {
        $this->deleteArquivo("fornecedor", "fornecedor_id = '$this->fornecedor_id'", "fornecedor_imagem", "../images/team/");
    }

    public function enviar() {
        $this->upload("../images/team/", "fornecedor_imagem", "");
    }

    public function getFornecedor() {
        $this->select("fornecedor", "", "*", "", "WHERE fornecedor_id = $this->fornecedor_id", "");
    }

    public function getFornecedores() {
        $this->select("fornecedor");
    }

    public function JSON() {
        $this->getJSON("fornecedor", "fornecedor_id = '$this->fornecedor_id'");
    }
	
}
