<?php

class Products
{
    public $products = array();

    // mysql connecton params
    public $user = 'sweetscomplete';
    public $dbname = 'sweetscomplete';
    public $pass = 'password';
    public $host = 'localhost';
    public $dsn = '';
    public $pdo = '';
    public $testMode = true;

    public function __construct()
    {
        session_start();
        $this->dsn = sprintf('mysql:dbname=%s;host=%s', $this->dbname, $this->host);
        if ($this->testMode) {
            $this->pdo = new PDO($this->dsn, $this->user, $this->pass, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING));
        } else {
            $this->pdo = new PDO($this->dsn, $this->user, $this->pass);
        }

        $sql = "SELECT * FROM products";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $this->products[] = $row;
        }
    }

    public function getDetailsById($id)
    {
        $sql = 'SELECT * FROM sweetscomplete.products WHERE product_id = ?';
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute(array($id));
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        return $row;
    }

    public function addProductToCart($id, $quantity, $price)
    {
        $details = $this->getDetailsById($id);
        if ($details) {
            $details['qty'] = $quantity;
            $details['price'] = $price;
            $_SESSION['cart'][] = $details;
            $result = true;
        } else {
            $result = false;
        }

        return $result;
    }

    public function getShoppingCart()
    {
        if (isset($_SESSION['cart'])) {
            return $_SESSION['cart'];
        } else {
            return array();
        }
    }

    public function getProductsFromCsv()
    {
        $labels = array('id', 'sku', 'title', 'description', 'price', 'special', 'link');
        $fh = fopen('./Model/products.csv', 'r');
        if ($fh) {
            while (!feof($fh)) {
                $row = fgetcsv($fh);
                $tempRow = array();
                if (isset($row) && is_array($row) && count($row) > 0) {

                    foreach ($row as $key => $value) {
                        $tempRow[$labels[$key]] = $value;
                    }
                    $this->products[] = $tempRow;
                }
            }
        }
    }

    public function getProducts()
    {
        return $this->products;
    }

    public function getTitles()
    {
        $titles = array();
        foreach ($this->products as $row) {
            $titles[] = $row['title'];
        }
        return $titles;
    }
}
