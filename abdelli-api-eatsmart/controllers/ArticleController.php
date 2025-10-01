<?php

require_once "../models/ArticleModel.php";

class ArticleController
{
    private $articleModel;

    public function __construct()
    {
        $this->articleModel = new ArticleModel();
    }

    public function getAllArticles()
    {
        $articles = $this->articleModel->getDBAllArticles();
        echo json_encode($articles);
    }
}
$articleController = new ArticleController();
$articleController->getAllArticles();
