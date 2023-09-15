# Transform SPARQL JSON result into validation errors format

.results.bindings[]|{ 
#  id: .result.value,            # blank node
  node: .node,                  # IRI or blank node or literal
  type: .type.value,            # IRI
  severity: .severity.value,    # IRI
}
+ if .message then { message: .message.value } else {} end  # literal
+ if .source then { source: .source } else {} end           # IRI or blank node
+ if .path then { path: .path.value } else {} end           # IRI or blank node (may change)
+ if .value then { value: .value } else {} end              # IRI or blank node or literal
