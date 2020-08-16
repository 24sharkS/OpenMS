
Attachment$$set("active","tableRows", function(tableRows) {
  if(!missing(tableRows)){
    if( !(is_list(tableRows) && lapply(tableRows,function(v0) (is_list(v0) || is_vector(v0)) && sapply(v0,function(v0_1) is_scalar_character(v0_1) ))) ) { stop("arg tableRows wrong type") }
    private$$py_obj$$tableRows <- modify_depth(tableRows,2,function(t) py_builtin$$bytes(t,'utf-8'))
  } else {
        modify_depth(private$$py_obj$$tableRows,2,as.character)
  }
} )

