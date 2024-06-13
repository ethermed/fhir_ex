defmodule Fhir.Generated.ValueSetScope do
  use TypedStruct

  typedstruct do
    field :_exclusionCriteria, Fhir.Generated.Element
        field :_inclusionCriteria, Fhir.Generated.Element
        field :exclusionCriteria, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :inclusionCriteria, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
