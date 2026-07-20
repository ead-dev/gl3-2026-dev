<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet" type="text/css">
    <title>LISTE DES ARTICLES</title>
</head>
<body>
    <div class="container m-3">
        <div class="mb-3">
            <a href="/article/create" class="btn btn-primary">Ajouter un article</a>
        </div>
        <div class="card p-5">
            <div class="card-head">
                <h2 class="card-title">Liste des articles</h2>
            </div>
            <div class="card-body">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nom</th>
                            <th scope="col">Prix</th>
                            <th scope="col">Quantité</th>
                            <th scope="col">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($items as $item)
                        <tr>
                            <th scope="row">{{ $item->id }}</th>
                            <td>{{ $item->name }}</td>
                            <td>{{ $item->pv }}</td>
                            <td>{{ $item->quantite }}</td>
                            <td><a href="/articles/{{ $item->id }}" class="btn btn-info">Voir</a></td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>

                {{ $items->links() }}
            </div>
        </div>
    </div>
</body>
</html>
