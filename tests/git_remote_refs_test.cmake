function(test)

  pushd("${test_dir}/repo" --create)
    git(init)
    fwrite("README.md" "hello")
    git(add .)
    git(commit -m "message for commit")
  popd()


  cd("${test_dir}")
  git_remote_refs("repo")
  ans(refs)



  assert(COUNT 2 ${refs})


  list_select(refs "(r)-> return({r.name})")
  ans(refs)

  assert(CONTAINS HEAD ${refs})
  assert(CONTAINS master ${refs})

endfunction()