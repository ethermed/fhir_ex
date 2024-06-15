defmodule Fhir.TestScriptOperation do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_accept, Fhir.Element
        field :_contentType, Fhir.Element
        field :_description, Fhir.Element
        field :_destination, Fhir.Element
        field :_encodeRequestUrl, Fhir.Element
        field :_label, Fhir.Element
        field :_method, Fhir.Element
        field :_origin, Fhir.Element
        field :_params, Fhir.Element
        field :_requestId, Fhir.Element
        field :_resource, Fhir.Element
        field :_responseId, Fhir.Element
        field :_sourceId, Fhir.Element
        field :_targetId, Fhir.Element
        field :_url, Fhir.Element
        field :accept, :string
        field :contentType, :string
        field :description, :string
        field :destination, :float
        field :encodeRequestUrl, :boolean
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :label, :string
        field :method, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :origin, :float
        field :params, :string
        field :requestHeader, [Fhir.TestScriptRequestHeader], default: []
        field :requestId, :string
        field :resource, :string
        field :responseId, :string
        field :sourceId, :string
        field :targetId, :string
        field :type, Fhir.Coding
        field :url, :string
  end
end
