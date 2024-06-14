defmodule Fhir.ValueSetInclude do
  use TypedStruct

  typedstruct do
    field(:_copyright, Fhir.Element)
    field(:_system, Fhir.Element)
    field(:_version, Fhir.Element)
    field(:concept, [Fhir.ValueSetConcept], default: [])
    field(:copyright, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:filter, [Fhir.ValueSetFilter], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:system, :string)
    field(:valueSet, [:string], default: [])
    field(:version, :string)
  end
end
