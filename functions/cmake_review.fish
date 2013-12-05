function cmake_review
  git fetch origin
  git fetch stage --prune
  git fetch brad discard/next:refs/discard/next

  eval bash git rev-list --first-parent origin/nightly ^refs/discard/next | while read commit; do git rev-parse $commit^2; done | xargs gitk ^origin/master ^refs/discard/next
end

function cmake_review_bad
  git fetch origin
  git fetch stage --prune
  git fetch brad discard/next:refs/discard/next

  set -l revcmd git rev-list --first-parent origin/nightly --not refs/discard/next
  set -l revlist (eval $revcmd)
  for i in $revlist;
    echo $i
  end;
end
