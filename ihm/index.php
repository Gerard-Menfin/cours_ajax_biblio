<?php include "views/header.html.php" ?>
    <main>
        <h1 class="d-flex justify-content-between">
            <span>Mes livres</span> 
            <span id="info"><span id="page"></span>/<span id="nbPages"></span></span>
            <div>
                <button class="btNav btn btn-success" id="btPrec">&lt;</button>
                <!-- <button id="btCharger" class="btn btn-secondary">Charger</button> -->
                <button class="btNav btn btn-success" id="btSuiv">&gt;</button>
            </div>
        </h1>
        <table id="tableLivres" class="table table-bordered">
            <thead class="table-dark">
                <tr>
                    <th class="col-1">ID</th>
                    <th class="col-6">Titre</th>
                    <th class="col-4">Auteur</th>
                    <th class="col-1">actions</th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
    </main>

<?php include "views/footer.html.php" ?>