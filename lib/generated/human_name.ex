defmodule Fhir.Generated.HumanName do
  use TypedStruct

  typedstruct do
    field :_family, Fhir.Generated.Element
        field :_given, [Fhir.Generated.Element], default: []
        field :_prefix, [Fhir.Generated.Element], default: []
        field :_suffix, [Fhir.Generated.Element], default: []
        field :_text, Fhir.Generated.Element
        field :_use, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :family, :string
        field :given, [:string], default: []
        field :id, :string
        field :period, Fhir.Generated.Period
        field :prefix, [:string], default: []
        field :suffix, [:string], default: []
        field :text, :string
        field :use, any()
  end
end
