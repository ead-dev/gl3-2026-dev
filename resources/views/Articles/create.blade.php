<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet" type="text/css">
    <title>Formulaire d'ajout d'article</title>
</head>
<body>
    <div class="container m-5">
        <div>
            <a href="/articles" class="btn btn-primary">Retour à la liste des articles</a>
        </div>
        <div class="card p-5">
            <div class="card-head">
                <h2 class="card-title">Ajouter un article</h2>
            </div>
            <div class="card-body">
                <form action="/articles" method="POST">
                    @csrf
                    <div class="mb-3">
                        <label for="name" class="form-label">Nom de l'article</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="mb-3">
                        <label for="pv" class="form-label">Prix de vente</label>
                        <input type="number" class="form-control" id="pv" name="pv" required>
                    </div>
                    <div class="mb-3">
                        <label for="quantite" class="form-label">Quantité en stock</label>
                        <input type="number" class="form-control" id="quantite" name="quantite" required>
                    </div>
                    <button type="submit" class="btn btn-success">Ajouter</button>
                </form>
            </div>
        </div>

    </div>
</body>
</html>
