defmodule Fhir.v6().TerminologyCapabilitiesVersion do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:_compositional, Fhir.v6().Element)
    field(:_isDefault, Fhir.v6().Element)
    field(:_language, [Fhir.v6().Element], default: [])
    field(:_property, [Fhir.v6().Element], default: [])
    field(:code, :string)
    field(:compositional, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:filter, [Fhir.v6().TerminologyCapabilitiesFilter], default: [])
    field(:id, :string)
    field(:isDefault, :boolean)
    field(:language, [:string], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:property, [:string], default: [])
  end
end
