<?php

require_once "models/CategorieModel.php";

class CategorieController
{
    private $categorieModel;

    public function __construct()
    {
        $this->categorieModel = new CategorieModel();
    }

    public function getAllCategories()
    {
        $categories = $this->categorieModel->getDBAllCategories();
        echo json_encode($categories);
    }

    public function getCategorieById ($idCategorie) {
        $lignesCategorie = $this->model->getDBCategorieById($idCategorie);
        echo json_encode($lignesCategorie);
    }
}
// $categorieController = new CategorieController();
// $categorieController->getAllCategories();
