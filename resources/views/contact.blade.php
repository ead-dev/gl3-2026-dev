<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page de contact</title>
</head>
<body>
 <h1>NOUS CONTACTER</h1>
 <h3>Ecrivez-nous</h3>
 <h2>VUE LISTE</h2>
    <ul>
        <?php foreach ($migs as $m): ?>
            <li><?php echo $m['id'].' - '.$m['migration'] ?></li>
        <?php endforeach; ?>
    </ul>

    <h2>VUE TABLEAU</h2>
    <table style="border: 1px #ccc">
        <thead>
            <tr style="border: 1px #ccc solid">
                <th>ID</th>
                <th>MIGRATION</th>
                <th>BATCH</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($migs as $m): ?>
            <tr>
                <td><?= $m['id'] ?></td>
                <td><?= $m['migration'] ?></td>
                <td><?= $m['batch'] ?></td>
            </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
</body>
</html>
