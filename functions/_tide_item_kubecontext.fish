# Defined interactively
function _tide_item_kubecontext
  echo "⎈ "(kubectl config view --minify --output 'jsonpath={..current-context}')
end
