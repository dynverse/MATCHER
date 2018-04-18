#' @importFrom glue glue
.onLoad <- function(libname, pkgname) {
  path <- find.package('MATCHER')
  if(!dir.exists(glue::glue("{path}/venv"))) {
    reinstall()
  }
}

#' @importFrom glue glue
reinstall <- function() {
  path <- find.package('MATCHER')
  system(glue::glue("bash {path}/make {path}/venv"))
}
