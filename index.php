<?php

ini_set('display_errors', 1);



$tables = [
    'sylius_product',
    'sylius_product_variant',
    'sylius_channel'
];

foreach ($tables as $table) {
    require_once "Classes/SyliusDb.php";
    $db = new SyliusDb('blackfire', 'root', '2048');
    $firstResult = $db->getFirstFromQueryResult("SELECT * FROM $table");
    ?>
    <table border="1">

        <tr>
            <?php foreach($firstResult as $key => $value):?>
                <?php if (!is_numeric($key)):?>
            <th><?php echo $key ?></th>
                <?php endif?>
            <?php endforeach;?>
        </tr>

        <tr>
            <?php foreach($firstResult as $key => $value):?>
                <?php if (!is_numeric($key)):?>
                    <td><?php echo $value ?></td>
                <?php endif?>
            <?php endforeach;?>
        </tr>
    </table>
    <hr>

<?php
    sleep(1);
}
