function(ref_setnew ref)
	ref_new(res)
	ref_set(${res} "${ARGN}")
	set(${ref} ${res} PARENT_SCOPE)
endfunction()