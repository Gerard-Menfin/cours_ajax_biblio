const serveurAPI = "http://localhost/ajax_poles/livres/serveur_api";

let chargerLivres = function(page = 1) {
    let tableBody = document.querySelector("#tableLivres tbody");
    let info      = document.querySelector("#info");
    fetch(`${serveurAPI}/liste_livres.php?page=${page}`)
        .then(reponseHTTP => reponseHTTP.json())
        .then(reponse => {
            pageActuelle = reponse.page;
            info.querySelector(":first-child").innerHTML = pageActuelle;
            info.querySelector(":nth-child(2)").innerHTML = reponse.total;
            tableBody.innerHTML = "";
            reponse.livres.forEach(livre => {
                let tr       = document.createElement("tr");
                let tdTitre  = document.createElement("td");
                let tdAuteur = document.createElement("td");
                let tdId     = document.createElement("td");
                let tdAction = document.createElement("td");

                tdTitre.innerHTML  = livre.titre;
                tdAuteur.innerHTML = livre.auteur;
                tdId.innerHTML     = livre.id;
                tdAction.innerHTML = `<a href='${serveurAPI}/fiche_livre.php?id=${livre.id}' class='btn btn-info'>fiche</a>`;

                tr.appendChild(tdId);
                tr.appendChild(tdTitre);
                tr.appendChild(tdAuteur);
                tr.appendChild(tdAction);

                tableBody.appendChild(tr);
            })
        }).then(() => {
            liensFiches = document.querySelectorAll("td  a");
            liensFiches.forEach( (lien, indice) => {
                lien.addEventListener("click", e => {
                    e.preventDefault();
                    /**
                     * Dans un écouteur d'évènement, quand on utilise une fonction,
                     *      la variable "this" correspond à l'objet qui déclenche l'évènement.
                     * Dans une fonction fléchée, "this" correspond à l'objet Window. 
                     *      Donc pour avoir l'élément qui a déclenché l'évènement,
                     *      on utilise la propriété "target" de l'objet "Event".
                     */
                    fetch(e.target.href)
                    .then(response => response.json())
                    .then(livre => {
                        document.querySelector("main").innerHTML = `
                            
                            <ul class="list-group mb-5">
                                <li class="list-group-item"><h2>Titre : ${livre.titre}</h2></li>
                                <li class="list-group-item"><strong>ID :</strong> ${livre.id}</li>
                                <li class="list-group-item"><strong>Auteur :</strong> ${livre.auteur}</li>
                            </ul>

                            <a class="btn btn-danger" href='http://localhost/ajax_poles/livres/'>Accueil</a>
                        `;
                    })
                })
            } )
            console.log(liensFiches); 

        })
        .catch(error => {
            console.log("Erreur lors de la récupération des données : ", error);
        });

}

let liensFiches;
let pageActuelle = 0;

let bouton = document.querySelector("#btCharger");
// bouton.addEventListener("click", chargerLivres);

let btNavs = document.querySelectorAll(".btNav");
for (const bt of btNavs) {
    bt.addEventListener("click", e => {
        let p;
        if( e.target.id == "btPrec" ) {
            // p = --pageActuelle || 1; // ! OR retourne la valeur droite si gauche est _falsy_
            p = --pageActuelle;
        } else {
            p = ++pageActuelle;
        }
        chargerLivres( p );
    })
}

// init
chargerLivres();