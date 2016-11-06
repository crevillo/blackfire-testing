<?php

ini_set('display_errors', 1);


$tables = [
    'sylius_product',
    'sylius_product_variant',
    'sylius_channel'
];



require_once "Classes/SyliusDb.php";
$db = new SyliusDb('blackfire', 'root', '2048');
foreach ($tables as $table) {
    $firstResult = $db->getFirstFromQueryResult("SELECT * FROM $table");

    ?>
    <table border="1">

        <tr>
            <?php foreach($firstResult as $key => $value):?>
            <th><?php echo $key ?></th>
            <?php endforeach;?>
        </tr>

        <tr>
            <?php foreach($firstResult as $key => $value):?>
                    <td><?php echo $value ?></td>

            <?php endforeach;?>
        </tr>
    </table>
    <hr />

        Resultados obtenidos con PHP <?php echo $systemInfo->getPHPVersion()?>
    <hr>

<?php
}
