#' An Age Function
#'
#' This function allows you to find the oldest NBA player with the highest points for a specific year.
#' @param year 
#' @keywords age
#' @export
#' @examples
#' find_oldest()

find_oldest <- function(year){
  
  NBA %>%
    dplyr::filter(Year == year) %>% 
    dplyr::filter(Age == max(Age, na.rm = TRUE)) %>%
    dplyr::filter(PTS == max(PTS, na.rm = TRUE)) %>%    # if multiple player have same age it return the player with the highest points. 
    dplyr::select(Player, Age)
}