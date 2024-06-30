defmodule Fhir.ValueSetContains do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_abstract, Fhir.Element)
    field(:_code, Fhir.Element)
    field(:_display, Fhir.Element)
    field(:_inactive, Fhir.Element)
    field(:_system, Fhir.Element)
    field(:_version, Fhir.Element)
    field(:abstract, :boolean)
    field(:code, :string)
    field(:contains, [Fhir.ValueSetContains], default: [])
    field(:designation, [Fhir.ValueSetDesignation], default: [])
    field(:display, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:inactive, :boolean)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:property, [Fhir.ValueSetProperty1], default: [])
    field(:system, :string)
    field(:version, :string)
  end
end
