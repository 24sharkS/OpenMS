
# Gets the raw data for the float data array
# Example usage:
# fd = IntegerDataArray$$new()
# data = fd$$get_data()
IntegerDataArray$$set("public","get_data",function(){
  ans <- private$$py_obj$$get_data()
  return(as.vector(ans))
}
)


# Sets the raw data for the float data array
#
# Example usage:
#
# fd = IntegerDataArray$$new()
# data = 1:5
# fd.set_data(data)
IntegerDataArray$$set("public","set_data",function(data){
  if (!( is_vector(data) && all(sapply(data, function(d) isTRUE(all.equal(d,as.integer(d))))) && (is.null(ncol(data)) || is.na(ncol(data))) )) { stop(paste0("Wrong argument ",data)) }
  data1 <- sapply(data,as.integer)
  private$$py_obj$$set_data(as.array(data1))
}
)

#' @export
`[.IntegerDataArray` <- function(x,ix){
  stopifnot(R6::is.R6(x))
  if(!(isTRUE(all.equal(ix,as.integer(ix))))) { stop("index must be integer") }
  tryCatch({
    return(x$$.__enclos_env__$$privat$$py_obj[as.integer(ix)-1])
           }, error = function(e) { paste0("invalid index",ix) }
  )
}

#' @export
`[<-.IntegerDataArray` <- function(x,ix,value){
  stopifnot(R6::is.R6(x))
  if(!(isTRUE(all.equal(ix,as.integer(ix))))) { stop("index must be integer") }
  if(!(isTRUE(all.equal(ix,as.integer(ix))))) { stop("value must be integer") }
    tryCatch({
    x$$.__enclos_env__$$privat$$py_obj[as.integer(ix)-1] <- as.integer(value)
           }, error = function(e) { paste0("invalid index",ix) }
  )
}

