
#' Extract caulerpa 
#'
#' @param spdata The data containing all species
#'
#' @return A tibble only containing ursidae
#' @export
#' @importFrom dplyr filter
#' @importFrom dplyr select
#' @importFrom magrittr %>%
#'


#selectioner variable d'interêt 
#' @examples
extract_caulerpa <- function(data_caulerpa) {
  ## Sélection des espèces
  data_caulerpa %>%
    dplyr::select(declin, BIOC, BATHY_cat,
                  Temp_my, Chl_moy, Sal_moy,Turb_my,
                  mll_p2018, mll_s2018, rjt2018,  aqu2018) # Sélection de colonnes
}

#rename variable 
#selectioner variable d'interêt 
#' @examples
rename_caulerpa <- function(data_caulerpa) {
  ## Sélection des espèces
  dat <- cualerpa %>%
    rename(                                    # Nom des colonnes
      adult_bodymass = `5-1_AdultBodyMass_g`,
      dispersal_age  = `7-1_DispersalAge_d`,
      gestation      = `9-1_GestationLen_d`,
      homerange      = `22-2_HomeRange_Indiv_km2`,
      litter_size    = `16-1_LittersPerYear`,
      longevity      = `17-1_MaxLongevity_m
  )
}
###






