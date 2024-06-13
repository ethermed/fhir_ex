defmodule Fhir.Generated.TestScriptOperation do
  use TypedStruct

  typedstruct do
    field :_accept, Fhir.Generated.Element
        field :_contentType, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_destination, Fhir.Generated.Element
        field :_encodeRequestUrl, Fhir.Generated.Element
        field :_label, Fhir.Generated.Element
        field :_method, Fhir.Generated.Element
        field :_origin, Fhir.Generated.Element
        field :_params, Fhir.Generated.Element
        field :_requestId, Fhir.Generated.Element
        field :_resource, Fhir.Generated.Element
        field :_responseId, Fhir.Generated.Element
        field :_sourceId, Fhir.Generated.Element
        field :_targetId, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :accept, :string
        field :contentType, :string
        field :description, :string
        field :destination, :float
        field :encodeRequestUrl, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :label, :string
        field :method, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :origin, :float
        field :params, :string
        field :requestHeader, [Fhir.Generated.TestScriptRequestHeader], default: []
        field :requestId, :string
        field :resource, :string
        field :responseId, :string
        field :sourceId, :string
        field :targetId, :string
        field :type, Fhir.Generated.Coding
        field :url, :string
  end
end
