<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet" type="text/css">
    <title>{{ $item->name }}</title>
</head>
<body>
    <div class="container m-5">
        <div>
            <a href="/articles" class="btn btn-primary">Retour à la liste des articles</a>
        </div>
        <div class="card p-5">
            <div class="card-head">
                <h2 class="card-title">{{ $item->name }}</h2>
            </div>
            <div class="card-body">
                <p class="card-text">Prix: {{ $item->pv }}</p>
                <p class="card-text">Quantité en stock: {{ $item->quantite }} </p>
            </div>
        </div>

    </div>
</body>
</html>
