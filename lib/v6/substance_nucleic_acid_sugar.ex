defmodule Fhir.v6().SubstanceNucleicAcidSugar do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.v6().Element)
    field(:_residueSite, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, Fhir.v6().Identifier)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:residueSite, :string)
  end
end
