defmodule Fhir.HumanName do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_family, Fhir.Element
        field :_given, [Fhir.Element], default: []
        field :_prefix, [Fhir.Element], default: []
        field :_suffix, [Fhir.Element], default: []
        field :_text, Fhir.Element
        field :_use, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :family, :string
        field :given, [:string], default: []
        field :id, :string
        field :period, Fhir.Period
        field :prefix, [:string], default: []
        field :suffix, [:string], default: []
        field :text, :string
        field :use, any()
  end
end
