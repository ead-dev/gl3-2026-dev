<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>LISTE DES ARTICLES</h1>
    <table style="border: 1px #ccc">
        <thead>
            <tr style="border: 1px #ccc solid">
                <th>ID</th>
                <th>NOM</th>
                <th>PRIX</th>
                <th>STOCK</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($items as $item): ?>
            <tr>
                <td><?= $item['id'] ?></td>
                <td><?= $item['name'] ?></td>
                <td><?= $item['pv'] ?></td>
                <td><?= $item['quantite'] ?></td>
            </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
    <?php dd($items); ?>
</body>
</html>
