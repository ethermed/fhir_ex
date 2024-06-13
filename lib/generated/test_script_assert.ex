defmodule Fhir.Generated.TestScriptAssert do
  use TypedStruct

  typedstruct do
    field :_compareToSourceExpression, Fhir.Generated.Element
        field :_compareToSourceId, Fhir.Generated.Element
        field :_compareToSourcePath, Fhir.Generated.Element
        field :_contentType, Fhir.Generated.Element
        field :_defaultManualCompletion, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_direction, Fhir.Generated.Element
        field :_expression, Fhir.Generated.Element
        field :_headerField, Fhir.Generated.Element
        field :_label, Fhir.Generated.Element
        field :_minimumId, Fhir.Generated.Element
        field :_navigationLinks, Fhir.Generated.Element
        field :_operator, Fhir.Generated.Element
        field :_path, Fhir.Generated.Element
        field :_requestMethod, Fhir.Generated.Element
        field :_requestURL, Fhir.Generated.Element
        field :_resource, Fhir.Generated.Element
        field :_response, Fhir.Generated.Element
        field :_responseCode, Fhir.Generated.Element
        field :_sourceId, Fhir.Generated.Element
        field :_stopTestOnFail, Fhir.Generated.Element
        field :_validateProfileId, Fhir.Generated.Element
        field :_value, Fhir.Generated.Element
        field :_warningOnly, Fhir.Generated.Element
        field :compareToSourceExpression, :string
        field :compareToSourceId, :string
        field :compareToSourcePath, :string
        field :contentType, :string
        field :defaultManualCompletion, :string
        field :description, :string
        field :direction, :string
        field :expression, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :headerField, :string
        field :id, :string
        field :label, :string
        field :minimumId, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :navigationLinks, :boolean
        field :operator, :string
        field :path, :string
        field :requestMethod, :string
        field :requestURL, :string
        field :requirement, [Fhir.Generated.TestScriptRequirement], default: []
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
