#' A Correlation Function
#'
#' This function allows you to find the correlation matrix of NBA data for a specific year.
#' @param year 
#' @keywords correlation
#' @export
#' @examples
#' find_corr()

find_corr <- function(year){
  
  NBA %>%
    dplyr::filter(Year == year) %>% 
    dplyr::select_if(., is.numeric) %>% 
    within(., rm("Year"))  %>% 
    stats::cor(.,use = "complete.obs") %>%
    corrplot::corrplot(.,method="color",tl.col="black",tl.srt = 90)
}