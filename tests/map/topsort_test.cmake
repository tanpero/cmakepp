function(test)

  function(my_successors node)
    if("${node}" STREQUAL p)
      return(1 2 5)
    elseif("${node}" STREQUAL 1)
      return(5)
    elseif("${node}" STREQUAL 2)
      return(4 5)
    elseif("${node}" STREQUAL 3)
      return(2)
    elseif("${node}" STREQUAL 4)
      return(1)
    elseif("${node}" STREQUAL 5)
      return()
    endif()
  endfunction()

  function(my_gethash node)
    return(${node})
  endfunction()

  topsort(my_gethash my_successors p)
  ans(top_order)
  message("order ${top_order}")
  assert(PREDICATE list_isinorder(top_order p 1))
  assert(PREDICATE list_isinorder(top_order p 2))
  assert(PREDICATE list_isinorder(top_order p 5))
  assert(PREDICATE list_isinorder(top_order 1 5))
  assert(PREDICATE list_isinorder(top_order 2 4))
  assert(PREDICATE list_isinorder(top_order 4 1))
  assert(PREDICATE list_isinorder(top_order 2 5))

endfunction()