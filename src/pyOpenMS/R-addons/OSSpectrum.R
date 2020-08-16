
OSSpectrum$$set("public","getMZArray",function() {
  return(private$$py_obj$$getMZArray())
})

OSSpectrum$$set("public","getIntensityArray",function() {
  return(private$$py_obj$$getIntensityArray())
})

OSSpectrum$$set("public","setMZArray",function(data) {
  if(!(is_double(data))) { stop("arg data wrong type") }
  return( private$$py_obj$$setMZArray(as.list(data)) )
})

OSSpectrum$$set("public","setIntensityArray",function(data) {
  if(!(is_double(data))) { stop("arg data wrong type") }
  return( private$$py_obj$$setMZArray(as.list(data)) )
})
