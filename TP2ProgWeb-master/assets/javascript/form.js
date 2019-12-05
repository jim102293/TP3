//FONCTIONS JQUERY
$(document).ready(function () {
  //LES FONCTIONS SUIVANTES CONCERNENT L'APPARITION DU MENU
  $("#haut").click(function () { //acceuil
    $("#accueil").slideDown("fast");
    $("#inscription").slideUp("fast");
    $("#sectioncarte").slideUp("fast");
    $(".sousMenu").removeClass("sousMenuLong");
    $("a.subActive").removeClass("subActive");
      $("#haut").removeClass("activeDefault");
      $("#haut").addClass("activeMenu-1");
      $("#milieu").removeClass("activeMenu-2");
      $("#bas").removeClass("activeMenu-3");   
  });
  $("#francais").click(function () { //acceuil
    $("#accueil").slideDown("fast");
    $("#inscription").slideUp("fast");
    $("#sectioncarte").slideUp("fast");
  });
  $("#english").click(function () { //acceuil
    $("#accueil").slideDown("fast");
    $("#inscription").slideUp("fast");
    $("#sectioncarte").slideUp("fast");
  });
  $("#milieu").click(function () { //Inscription
    $("#accueil").slideUp("fast");
    $("#inscription").slideDown("fast");
    $("#sectioncarte").slideUp("fast");
    $(".sousMenu").removeClass("sousMenuLong");
    $("a.subActive").removeClass("subActive");
    $("#haut").removeClass("activeDefault");
    $("#milieu").addClass("activeMenu-2");
    $("#haut").removeClass("activeMenu-1");
    $("#bas").removeClass("activeMenu-3");
    
  });
  $("#bas").click(function () { //Localiser
    $("#accueil").slideUp("fast");
    $("#inscription").slideUp("fast");
    $("#sectioncarte").slideDown("fast");
    $(".sousMenu").addClass("sousMenuLong");
    $("#bas").addClass("activeMenu-3");
    $("#haut").removeClass("activeDefault");
    $("#haut").removeClass("activeMenu-1");
    $("#milieu").removeClass("activeMenu-2");
  });
  $("#bas").dblclick(function () { //Enlève le sous-menu au double click
    $(".sousMenu").removeClass("sousMenuLong");
  });
  $(".sousMenu").on('click', 'a', function () { //Sous-menu
    $('.sousMenu a.subActive').removeClass("subActive");
    $(this).addClass("subActive");
  });
  //-------------------------------------------------------
  //CES FONCTIONS CONCERNENT LES CHAMPS D'INSCRIPTIONS ET LES VALIDATION AFIN D'AJOUTER DIFFÉRENT CSS ET CONDITIONS
  // Validation des champs
  $("input[type=text]").focusout(function (event) { //Met une bordure rouge sur le prénom et le nom
    if (this.value.length < 1 || this.value.length > 25) {
      $(this).addClass("invalidLabel");
      event.preventDefault();
    }
    else
      $(this).removeClass("invalidLabel");
  });
  $("input[type=date]").focusout(function (event) { //Met une bordure rouge sur la date
    if ($(this).first().val() === "") {
      $(this).addClass("invalidLabel");
      return;
    }
    $(this).removeClass("invalidLabel");
    event.preventDefault();
  });
  $("input[type=radio]").focusout(function (event) { //Met un texte rouge sur le sexe
    if (!$(this).is(':checked')) {
      $("<span id='special'>*Veuillez choisir un sexe</span>").insertAfter('label:nth-of-type(6)');
      return;
    }
    else 
    $("#special").remove();
    event.preventDefault();
  });
  $('input[name ="activité"]').focusout(function (event) { //Met une bordure rouge sur l'activité
    if ($(this).first().val() === "") {
      $(this).addClass("invalidLabel");
      return;
    }
    $(this).removeClass("invalidLabel");
    event.preventDefault();
  });
  $("input[type=reset]").click(function () { //Retire les éléments CSS
    $("form>input.invalidLabel").removeClass("invalidLabel");
    $("span").remove();
  });
  //fin de la validation des champs et début de la validation global(Lorsqu'on click sur valider)
  $("form").submit(function (event) { //La fonction afin de vérifier si tous les champs ont été remplis
    $("span").remove();
    if ($("input[type=text]").val() === "" || $("input[type=date]").val() === "" || (!$("input[type=radio]").is(':checked')) || $('input[name ="activité"]').first().val() === "") {
      $("<span>Votre inscription n'a pas été envoyé car un ou plusieurs champs ne sont pas validés.</span>").insertAfter('input[name ="submit"]').fadeOut(5000);
      if ($('input[name ="nom"]').val() === "") { //nom
        $("<span> *Entrer votre nom</span>").insertAfter('input[name ="nom"]');
        $("input[name =nom]").addClass("invalidLabel");
      }
      if ($('input[name ="prenom"]').val() === "") { //prenom
        $("<span> *Entrer votre prénom</span>").insertAfter('input[name ="prenom"]');
        $("input[name =prenom]").addClass("invalidLabel");
      }
      if ($('input[name ="bday"]').val() === "") { //date 
        $("<span> *Entrer votre date de naissance</span>").insertAfter('input[name ="bday"]');
        $("input[name =bday]").addClass("invalidLabel");
      }
      if ((!$("input[type=radio]").is(':checked'))) { //sexe
        $("<span> *Veuillez choisir un sexe</span>").insertAfter('label:nth-of-type(6)');
      }
      if ($('input[name ="activité"]').first().val() === "") { //Activité
        $("<span> *Veuillez choisir une activité</span>").insertAfter('input[name ="activité"]');
        $("input[name =activité]").addClass("invalidLabel");
      }
      event.preventDefault();
    }
    else 
      alert("Votre inscription a été envoyé!");
  });
});
//---------------------------------------------------------------------------
//FONCTIONS JAVASCRIPT
function lettersOnly(input) { //Fait en sorte qu'il est impossible pour le client d'écrire des chiffres pour les champs noms et prénoms
  var onlyLetters = /[^a-z àèìòùÀÈÌÒÙáéíóúýÁÉÍÓÚÝâêîôûÂÊÎÔÛãñõÃÑÕäëïöüÿÄËÏÖÜŸçÇßØøÅåÆæœ]/gi;
  input.value = input.value.replace(onlyLetters, "");
}
//CES FONCTIONS PERMETTENT L'APPARITION ET LA DISPARITION DU TABLEAU AINSI QUE DE TRIER CELUI-CI
//Les données du tableau
var data = [{ "order": 1, "activity": "Natation", "manager": "Michel Provencher", "numofsub": 7 },
{ "order": 2, "activity": "Badminton", "manager": "Daniel Lefevbre", "numofsub": 15 },
{ "order": 3, "activity": "Randonnée", "manager": "Catherine Pelletier", "numofsub": 10 },
{ "order": 4, "activity": "Kayak", "manager": "Josée Coté", "numofsub": 14 },
{ "order": 5, "activity": "Velo", "manager": "Jean-Yves Surroy", "numofsub": 22 },
{ "order": 6, "activity": "Echecs", "manager": "Emilie Simard", "numofsub": 11 }];
//Affiche le tableau
function showTable() {  
  html = "<tbody>";
  for (var i = 0; i < data.length; i++) {
    html += "<tr>";
    html += "<td>" + data[i].order + "</td>";
    html += "<td>" + data[i].activity + "</td>";
    html += "<td>" + data[i].manager + "</td>";
    html += "<td>" + data[i].numofsub + "</td>";
    html += "</tr>";
  }
  document.getElementById("tableRows").innerHTML = html;
}
//Efface le tableau
function hideTable() { 
  var removeRow = document.getElementById("tableRows");
  for (var i = removeRow.rows.length - 1; i >= 0; i--) {
    removeRow.deleteRow(i);
  }
}
//Fonctions pour permettre le tri du tableau
function triOrder(a, b) {
  if (a.order < b.order)
    return -1;
  else if (a.order == b.order)
    return 0;
  else
    return 1;
}
function triActivite(a, b) {
  if (a.activity < b.activity)
    return -1;
  else if (a.activity == b.activity)
    return 0;
  else
    return 1;
}
function triManager(a, b) {
  if (a.manager < b.manager)
    return -1;
  else if (a.manager == b.manager)
    return 0;
  else
    return 1;
}
function triNumOfSub(a, b) {
  if (a.numofsub < b.numofsub)
    return -1;
  else if (a.numofsub == b.numofsub)
    return 0;
  else
    return 1;
}
//Cette fonction appel le triage du tableau
function activateTri(num) {
  num;
  if (num == 1) {
    data.sort(triOrder);
    showTable();
  }
  if (num == 2) {
    data.sort(triActivite);
    showTable();
  }
  if (num == 3) {
    data.sort(triManager);
    showTable();
  }
  if (num == 4) {
    data.sort(triNumOfSub);
    showTable();
  }
}
//Replace le tableau comme celui du chargement de la page 
function replaceDataInOrder() {
  data.sort(triOrder);
}
//------------------------------------------------------------------------------------------------------
//LA FONCTION POUR LA MAP DE GOOGLE MAP
function initMap() {
  // La localisation de l'UQTR
  var uqtr = { lat: 46.346381, lng: -72.579382 };
  var map = new google.maps.Map(
    document.getElementById('map'), { zoom: 15, center: uqtr });
  var marker = new google.maps.Marker({ position: uqtr, map: map });
}
//-------------------------------------------------------------------------------

