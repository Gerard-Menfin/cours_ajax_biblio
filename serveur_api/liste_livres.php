<?php

include "init.inc.php";

$page   = $_GET["page"] ?? 1;
$nombre = $_GET["nb"]   ?? 10;

$total = $pdo->query("SELECT COUNT(*) FROM livre")->fetchColumn();
$nbPagesTotal = round($total / $nombre);
$page = $page > $nbPagesTotal ? 1 : ($page < 1 ? $nbPagesTotal : $page) ;

$premier = ($page - 1) * $nombre;
$requete = $pdo->query("SELECT * FROM livre LIMIT $premier, $nombre");

if( $requete ) {
    $livres = $requete->fetchAll(PDO::FETCH_OBJ);
    // version Array
    $reponse["page"]    = $page;
    $reponse["total"]   = $nbPagesTotal;
    $reponse["livres"]  = $livres;
   
    // version Object
    /* 
    $reponse = new stdClass();
    $reponse->page = $page;
    $reponse->total = $total;
    $reponse->livres = $livres;
    */

    $reponse = json_encode($reponse);

    /* ********** RÉPONSE HTTP ********** */
    // ! La fonction 'header' ajoute un entête à la réponse HTTP renvoyée.
    // ! L'entête 'Content-type' permet de spécifier le type de contenu 
    // ! d'une réponse HTTP.
    header('Content-Type: application/json');
    echo $reponse;
}
