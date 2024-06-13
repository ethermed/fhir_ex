defmodule Fhir.Generated.GraphDefinitionLink do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_max, Fhir.Generated.Element
        field :_min, Fhir.Generated.Element
        field :_params, Fhir.Generated.Element
        field :_path, Fhir.Generated.Element
        field :_sliceName, Fhir.Generated.Element
        field :_sourceId, Fhir.Generated.Element
        field :_targetId, Fhir.Generated.Element
        field :compartment, [Fhir.Generated.GraphDefinitionCompartment], default: []
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :max, :string
        field :min, :float
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :params, :string
        field :path, :string
        field :sliceName, :string
        field :sourceId, :string
        field :targetId, :string
  end
end
