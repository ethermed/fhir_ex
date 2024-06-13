defmodule Fhir.Generated.ValueSetExpansion do
  use TypedStruct

  typedstruct do
    field :_identifier, Fhir.Generated.Element
        field :_next, Fhir.Generated.Element
        field :_offset, Fhir.Generated.Element
        field :_timestamp, Fhir.Generated.Element
        field :_total, Fhir.Generated.Element
        field :contains, [Fhir.Generated.ValueSetContains], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :next, :string
        field :offset, :float
        field :parameter, [Fhir.Generated.ValueSetParameter], default: []
        field :property, [Fhir.Generated.ValueSetProperty], default: []
        field :timestamp, :datetime
        field :total, :float
  end
end
