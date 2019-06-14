#' A Points Function
#'
#' This function allows you to find the NBA player with the highest points for a specific year.
#' @param year 
#' @keywords points
#' @export
#' @examples
#' find_points()

find_points <- function(year){
  
  NBA %>%
    dplyr::filter(Year == year) %>% 
    dplyr::filter(PTS == max(PTS, na.rm = TRUE)) %>%   
    dplyr::select(Player, PTS)
  
}