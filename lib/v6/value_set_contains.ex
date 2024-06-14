defmodule Fhir.v6().ValueSetContains do
  use TypedStruct

  typedstruct do
    field(:_abstract, Fhir.v6().Element)
    field(:_code, Fhir.v6().Element)
    field(:_display, Fhir.v6().Element)
    field(:_inactive, Fhir.v6().Element)
    field(:_system, Fhir.v6().Element)
    field(:_version, Fhir.v6().Element)
    field(:abstract, :boolean)
    field(:code, :string)
    field(:contains, [Fhir.v6().ValueSetContains], default: [])
    field(:designation, [Fhir.v6().ValueSetDesignation], default: [])
    field(:display, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:inactive, :boolean)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:property, [Fhir.v6().ValueSetProperty1], default: [])
    field(:system, :string)
    field(:version, :string)
  end
end
