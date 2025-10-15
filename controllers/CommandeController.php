<?php

require_once "models/CommandeModel.php";

class CommandeController
{
    private $commandeModel;

    public function __construct()
    {
        $this->commandeModel = new CommandeModel();
    }

    public function getAllCommandes()
    {
        $commandes = $this->commandeModel->getDBAllCommandes();
        echo json_encode($commandes);
    }

    public function getCommandeById ($idCommande) {
        $lignesCommande = $this->model->getDBCommandeById($idCommande);
        echo json_encode($lignesCommande);
    }
}
// $commandeController = new CommandeController();
// $commandeController->getAllCommandes();
