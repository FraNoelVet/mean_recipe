library(httr)
library(rvest)

url_base_marmiton <- "https://www.marmiton.org/recettes/recherche.aspx?type=all&aqt="
css_titre_card_marmiton <- ".recipe-card__title"

searched_words <- readline(prompt ="recette recherchée\n")
searched_words <- unlist(strsplit(searched_words, " "))


f_marmiton <- function(searched_words){
	searched_item <- paste(searched_words, collapse = "-")
	url_base <- paste("https://www.marmiton.org/recettes/recherche.aspx?type=all&aqt=",searched_item,"&start=1&page=1", sep = "")
	page_base <- read_html(url_base)
	nodes_txt_base <- html_nodes(page_base, ".recipe-card__title")
	nodes_url_base <- html_nodes(page_base, ".recipe-card-link")
	liste_recipe_i <- html_text(nodes_txt_base)
	liste_url_i <- html_attr(nodes_url_base, "href")
}

css_ingredients_marmiton <- ".recipe-ingredients__list__item span"
css_liste_ingredients_marmiton <- ".ingredient"
css_qt_ingredients_marmiton <- ".recipe-ingredient-qt"
css_duree_cuisson_marmiton <- ".recipe-infos__timmings__value"
css_preparation_marmiton <- ".recipe-infos__timmings__preparation"
css_duree_exclu_preparation_marmiton <- ".recipe-infos__timmings__preparation strong"


url_base_JDF <- "https://cuisine.journaldesfemmes.fr/s/?f_libelle="
css_titre_card_JDF <- ".bu_cuisine_recette_title a"

css_ingredients_JDF <- ".app_recipe_ing_title"
css_liste_ingredients_JDF <- ".app_recipe_ing_title a"
css_qt_ingredients_JDF <- ".app_recipe_ing_title span"
css_duree_cuisson_JDF <- "#jStickySize div:nth-child(3) span"
css_exclu_duree_cuisson_JDF <- "#jStickySize div:nth-child(3) strong"
css_preparation_JDF <- "#jStickySize div:nth-child(2) span"
css_duree_exclu_preparation_JDF <- "#jStickySize div:nth-child(2) strong"


url_base_750g <- "https://www.750g.com/recherche.htm?search="
css_titre_card_750g <- ".u-link-wrapper"

css_ingredients_750g <- ".recipe-ingredients-item-label"
css_liste_ingredients_750g <- ""
css_qt_ingredients_750g <- ""
css_duree_cuisson_750g <- ""
css_preparation_750g <- ""
css_duree_exclu_preparation_750g <- ""


