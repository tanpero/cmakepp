function(is_function_cmake result name)
	if(COMMAND "${name}")
		return_value(true)
	else()
		return_value(false)
	endif()
endfunction()