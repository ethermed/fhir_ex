defmodule Fhir.v6().ImplementationGuideResource do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_fhirVersion, [Fhir.v6().Element], default: [])
    field(:_groupingId, Fhir.v6().Element)
    field(:_isExample, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:fhirVersion, [:string], default: [])
    field(:groupingId, :string)
    field(:id, :string)
    field(:isExample, :boolean)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:profile, [:string], default: [])
    field(:reference, Fhir.v6().Reference)
  end
end
