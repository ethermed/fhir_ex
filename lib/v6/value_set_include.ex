defmodule Fhir.v6().ValueSetInclude do
  use TypedStruct

  typedstruct do
    field(:_copyright, Fhir.v6().Element)
    field(:_system, Fhir.v6().Element)
    field(:_version, Fhir.v6().Element)
    field(:concept, [Fhir.v6().ValueSetConcept], default: [])
    field(:copyright, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:filter, [Fhir.v6().ValueSetFilter], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:system, :string)
    field(:valueSet, [:string], default: [])
    field(:version, :string)
  end
end
