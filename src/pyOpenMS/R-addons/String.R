
String$$set("public","initialize",function(in_0){
  if(missing(in_0)){
    private$$py_obj <- Pymod$$String()
  } else {
    if(!is_scalar_character(in_0)) stop("arg in_0 must be a string")
    private$$py_obj <- Pymod$$String(in_0)
  }
},overwrite=TRUE)

String$$set("public","toString",function(){
  private$$py_obj$$toString()
})