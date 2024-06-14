defmodule Fhir.v6().HumanName do
  use TypedStruct

  typedstruct do
    field(:_family, Fhir.v6().Element)
    field(:_given, [Fhir.v6().Element], default: [])
    field(:_prefix, [Fhir.v6().Element], default: [])
    field(:_suffix, [Fhir.v6().Element], default: [])
    field(:_text, Fhir.v6().Element)
    field(:_use, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:family, :string)
    field(:given, [:string], default: [])
    field(:id, :string)
    field(:period, Fhir.v6().Period)
    field(:prefix, [:string], default: [])
    field(:suffix, [:string], default: [])
    field(:text, :string)
    field(:use, any())
  end
end
