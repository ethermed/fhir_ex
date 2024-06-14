defmodule Fhir.v6().CoverageEligibilityRequestSupportingInfo do
  use TypedStruct

  typedstruct do
    field(:_appliesToAll, Fhir.v6().Element)
    field(:_sequence, Fhir.v6().Element)
    field(:appliesToAll, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:information, Fhir.v6().Reference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:sequence, :float)
  end
end
