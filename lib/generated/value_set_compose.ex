defmodule Fhir.ValueSetCompose do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_inactive, Fhir.Element)
    field(:_lockedDate, Fhir.Element)
    field(:_property, [Fhir.Element], default: [])
    field(:exclude, [Fhir.ValueSetInclude], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:inactive, :boolean)
    field(:include, [Fhir.ValueSetInclude], default: [])
    field(:lockedDate, :date)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:property, [:string], default: [])
  end
end
