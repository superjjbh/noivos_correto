<?php

/*
 * @author phpstaff.com.br
 */

require_once 'Controle.php';

class Padrinho extends Controle {

    public $bd;
    public $padrinho_id;
    public $padrinho_nome;
    public $padrinho_subtitulo;
    public $padrinho_descricao;
    public $padrinho_imagem;
    public $result;

    public function __construct() {
        parent::__construct();
    }

    public function incluir() {
        $this->insert("padrinho", "padrinho_nome, padrinho_subtitulo, padrinho_descricao,  padrinho_imagem", "'$this->padrinho_nome','$this->padrinho_subtitulo', '$this->padrinho_descricao', '$this->padrinho_imagem'");
    }

    public function atualizar() {
        if ($this->padrinho_imagem != "") {
            $this->update("padrinho", "padrinho_nome = '$this->padrinho_nome', padrinho_subtitulo = '$this->padrinho_subtitulo',padrinho_descricao = '$this->padrinho_descricao'"
                    . ",padrinho_imagem = '$this->padrinho_imagem'", "padrinho_id = '$this->padrinho_id'");
        } else {
            $this->update("padrinho", "padrinho_nome = '$this->padrinho_nome', padrinho_subtitulo = '$this->padrinho_subtitulo', padrinho_descricao = '$this->padrinho_descricao'", "padrinho_id = '$this->padrinho_id'");
        }
    }

    public function remover() {
        $this->delete("padrinho", "padrinho_id = '$this->padrinho_id'");
    }

    public function removerArquivo() {
        $this->deleteArquivo("padrinho", "padrinho_id = '$this->padrinho_id'", "padrinho_imagem", "../images/team/");
    }

    public function enviar() {
        $this->upload("../images/team/", "padrinho_imagem", "");
    }

    public function getPadrinho() {
        $this->select("padrinho", "", "*", "", "WHERE padrinho_id = $this->padrinho_id", "");
    }

    public function getPadrinhos() {
        $this->select("padrinho");
    }

    public function JSON() {
        $this->getJSON("padrinho", "padrinho_id = '$this->padrinho_id'");
    }

}
