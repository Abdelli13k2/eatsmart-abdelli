<?php

require_once "../models/CatégorieModel.php";

class CatégorieController
{
    private $catégorieModel;

    public function __construct()
    {
        $this->catégorieModel = new CatégorieModel();
    }

    public function getAllCatégories()
    {
        $catégories = $this->catégorieModel->getDBAllCatégories();
        echo json_encode($catégories);
    }
}
$catégorieController = new CatégorieController();
$catégorieController->getAllCatégories();
