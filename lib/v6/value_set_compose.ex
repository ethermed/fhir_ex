defmodule Fhir.v6().ValueSetCompose do
  use TypedStruct

  typedstruct do
    field(:_inactive, Fhir.v6().Element)
    field(:_lockedDate, Fhir.v6().Element)
    field(:_property, [Fhir.v6().Element], default: [])
    field(:exclude, [Fhir.v6().ValueSetInclude], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:inactive, :boolean)
    field(:include, [Fhir.v6().ValueSetInclude], default: [])
    field(:lockedDate, :date)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:property, [:string], default: [])
  end
end
