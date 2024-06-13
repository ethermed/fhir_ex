defmodule Fhir.Generated.TerminologyCapabilitiesFilter do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_op, [Fhir.Generated.Element], default: []
        field :code, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :op, [:string], default: []
  end
end
