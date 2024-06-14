defmodule Fhir.v6().Linkage do
  use TypedStruct

  typedstruct do
    field(:_active, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:active, :boolean)
    field(:author, Fhir.v6().Reference)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:implicitRules, :string)
    field(:item, [Fhir.v6().LinkageItem], default: [])
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:resourceType, :string, default: "Linkage")
    field(:text, Fhir.v6().Narrative)
  end
end
