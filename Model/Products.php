<?php

class Products
{
    public $products = array();

    public function __construct()
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
