
    function(cmake_function_rename_first code new_name)
        cmake_function_signature("${code}")
        ans(sig)
        map_tryget(${sig} signature_code)
        ans(old_func)
        map_tryget(${sig} name)
        ans(old_name)
        string(REPLACE "${old_name}" "${new_name}" new_func "${old_func}")
        string(REPLACE "${old_func}" "${new_func}" code "${code}")
        return_ref(code)
    endfunction()