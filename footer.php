<?php
$contatos = new Contato();
$contatos->getContato();

$sobre = new Modulo3();
$sobre->getModulo3();

$portfolio = new Portfolio();
$pagina = new Pagina();

$rodape = new Modulo11();
$rodape->getModulo11();
$pagina = new Pagina();
?>

<section id="mainFooter">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="footerWidget">
                    <img src="thumb.php?h=110&src=images/<?= $modulo_aparencia->modulo_aparencia_logo ?>" alt="" id="footerLogo" class="img-responsive">
                    <p>
                        <?= Validacao::cut(stripslashes($sobre->modulo3_descricao), 350, '...') ?>
                        <a href="sobre/" class="readMore">Mais Sobre Nós</a>
                    </p>
                    <p>
                    </p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="footerWidget">
					<br>
                    <h3>Últimas Fotos</h3>
					<br>
                    <ul class="list-unstyled worksList">
                        <?php $portfolio->getUltimos() ?>
                        <?php if (isset($portfolio->db->data[0])): ?>
                            <?php foreach ($portfolio->db->data as $work) : ?>
                                <li><a href="projeto/<?= Filter::slug2($work->portfolio_nome) ?>/<?= $work->portfolio_id ?>/" class="tips" title="" data-original-title="<?= stripslashes($work->portfolio_nome) ?>"><img src="thumb.php?w=70&h=70&zc=1&src=images/portfolio/<?= $work->portfolio_imagem ?>" alt="..."></a></li>
                            <?php endforeach; ?>
                        <?php endif; ?>

                    </ul>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="footerWidget">
				<br>
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
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="footerWidget">
					<br>
                    <h3><?= $site->site_meta_titulo ?></h3>
					<br>
                    <address>
                        <p>
                            <i class="fa fa-calendar"></i> <?= $contatos->contato_telefone2 ?><br>
							
							<i class="icon-location"></i> <?= $contatos->contato_endereco ?><br>
							
							<i class="icon-location"></i><?= $contatos->contato_telefone4 ?><br>
                            <?php if (!empty($contatos->contato_telefone1)) : ?>
                                <i class="icon-phone"></i><?= $contatos->contato_telefone1 ?> <br>
                            <?php endif; ?>
                            <i class="icon-mail-alt"></i><?= $contatos->contato_email ?></a>
                        </p>
                    </address>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="footerRights">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="socialNetwork">
                    <?php 
                       $social = new Social();
                       $social->getSociaistatus();
                    ?>
                    <?php if (isset($social->db->data[0])): ?>
                        <?php foreach ($social->db->data as $redes): ?>
                            <li><a href="<?= Filter::UrlExternal($redes->social_url) ?>"  target="_blank" class="tips"><i class="<?= stripslashes($redes->social_nome) ?> iconRounded"></i></a></li>
                        <?php endforeach; ?>
                    <?php endif; ?>
                </ul>     
            </div>
            <div class="col-md-12">
				<br>
                <p><?= $site->site_meta_titulo ?> <?= stripslashes($rodape->modulo11_button) ?> Desenvolvido por <a href="http://jmtecnologiabh.com.br" target="_blank">J&M Tecnologia</a></p>
				<p>	
				<br>
				<a href="admin/index.php" target="_blank">admin</a>			
				</p>

            </div>
        </div>
    </div>
</section>