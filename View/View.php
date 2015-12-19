<?php

class View
{

    public function displayCart($array)
    {
        $total = 0;
        $output = '';
        foreach ($array as $cart) {
            $total += $cart['qty'] * $cart['price'];

            $output .= '<tr>';
            $output .= '<td>' . $cart['sku'] . '</td>';
            $output .= '<td><a href="detail.php&id=' . $cart['product_id'] . '">';
            $output .= '<img src="images/' . $cart['link'] . '.scale_20.JPG" alt="' . $cart['title'] . '" width="60"';
            $output .= ' height="60"/>';
            $output .= '</a>';
            $output .= '</td>';
            $output .= '<td>' . $cart['title'] . '</td>';
            $output .= '<td>Qty: <br/>';
            $output .= '<input type="text" value="' . $cart['qty'] . '" name="qty[]" class="s0" size="2"/></td>';
            $output .= '<td align="right">' . sprintf('$ %8.2f', $cart['price']) . '</td>';
            $output .= '<td align="right">' . sprintf('$ %8.2f', $cart['qty'] * $cart['price']) . '</td>';
            $output .= '<td>';
            $output .= '<table>';
            $output .= '<tr>';
            $output .= '<td>Remove</td>';
            $output .= '<td><input type="checkbox" name="remove[]" value="' . $cart['product_id'] . ' title="Remove"/>';
            $output .= '</td>';
            $output .= '</tr>';
            $output .= '<tr>';
            $output .= '<td>Update</td>';
            $output .= '<td><input type="checkbox" name="update[]" value="' . $cart['product_id'] . '" title="Update"/>';
            $output .= '</td>';
            $output .= '</tr>';
            $output .= '</table>';
            $output .= '</td>';
            $output .= '</tr>';
        }

        $output .= '<tr>';
        $output .= '<th colspan="5">Products Total:</th>';
        $output .= '<th colspan="2">' . sprintf('$ %10.2f', $total) . '</th>';
        $output .= '</tr>';

        return $output;
    }

    public function displayProducts($page, $linesPerPage, $maxProducts, $products)
    {

        $offset = $page * $linesPerPage;
        $output = '';
        for ($x = 0; $x < $linesPerPage; $x++) {
            if ($x + $offset >= $maxProducts) {
                break;
            }
            $output .= '<li>';
            $output .= '<div class="image">';
            $output .= '<a href="detail.html">';
            $output .= '<img src="images/'
                . $products[$x + $offset]['link']
                . '.scale_20.JPG"';
            $output .= 'alt="'
                . $products[$x + $offset]['title']
                . '" width="190" ';
            $output .= 'height="130"/>';
            $output .= '</a>';
            $output .= '</div>';
            $output .= '<div class="detail">';
            $output .= '<p class="name"><a href="detail.html">'
                . $products[$x]['title']
                . '</a></p>';
            $output .= '<p class="view"><a href="detail.html">purchase</a> | <a href="detail.html">view';
            $output .= 'details';
            $output .= '>></a></p>';
            $output .= '</div>';
            $output .= '</li>';

        }
        return $output;
    }

    public function displayMembers($page, $linesPerPage, $maxMembers, $members)
    {
        $offset = $page * $linesPerPage;
        $output = '';
        for ($x = 0; $x < $linesPerPage; $x++) {
            if ($x + $offset >= $maxMembers) {
                break;
            }
            $output .= '<tr>';
            $output .= '<td>' . $members[$x + $offset]['user_id'] . '</td>';
            $output .= '<td><img src="images/m.gif"/> ' . $members[$x + $offset]['name'] . '</td>';
            $output .= '<td>' . $members[$x + $offset]['city'] . '</td>';
            $output .= '<td><img src="images/e.gif"/>' . $members[$x + $offset]['email'] . '</td>';
            $output .= '</tr>';
        }
        return $output;
    }
}
