
function(oocmake str)
  expr_compile("${str}")
  ans(symbol)
  #message("${symbol}")
  map_isvalid("${global}" )
  ans(ismap)
  if(NOT ismap)
    map_new()
    ans(global)
  endif()
  set_ans("")
  eval("${symbol}")
  ans(res)
  if(NOT ismap)
    map_promote(${global})
  endif()
  return_ref(res)
endfunction()