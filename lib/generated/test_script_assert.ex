defmodule Fhir.TestScriptAssert do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_compareToSourceExpression, Fhir.Element
        field :_compareToSourceId, Fhir.Element
        field :_compareToSourcePath, Fhir.Element
        field :_contentType, Fhir.Element
        field :_defaultManualCompletion, Fhir.Element
        field :_description, Fhir.Element
        field :_direction, Fhir.Element
        field :_expression, Fhir.Element
        field :_headerField, Fhir.Element
        field :_label, Fhir.Element
        field :_minimumId, Fhir.Element
        field :_navigationLinks, Fhir.Element
        field :_operator, Fhir.Element
        field :_path, Fhir.Element
        field :_requestMethod, Fhir.Element
        field :_requestURL, Fhir.Element
        field :_resource, Fhir.Element
        field :_response, Fhir.Element
        field :_responseCode, Fhir.Element
        field :_sourceId, Fhir.Element
        field :_stopTestOnFail, Fhir.Element
        field :_validateProfileId, Fhir.Element
        field :_value, Fhir.Element
        field :_warningOnly, Fhir.Element
        field :compareToSourceExpression, :string
        field :compareToSourceId, :string
        field :compareToSourcePath, :string
        field :contentType, :string
        field :defaultManualCompletion, :string
        field :description, :string
        field :direction, :string
        field :expression, :string
        field :extension, [Fhir.Extension], default: []
        field :headerField, :string
        field :id, :string
        field :label, :string
        field :minimumId, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :navigationLinks, :boolean
        field :operator, :string
        field :path, :string
        field :requestMethod, :string
        field :requestURL, :string
        field :requirement, [Fhir.TestScriptRequirement], default: []
        field :resource, :string
        field :response, :string
        field :responseCode, :string
        field :sourceId, :string
        field :stopTestOnFail, :boolean
        field :validateProfileId, :string
        field :value, :string
        field :warningOnly, :boolean
  end
end
