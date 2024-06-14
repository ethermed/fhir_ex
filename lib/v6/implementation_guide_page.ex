defmodule Fhir.v6().ImplementationGuidePage do
  use TypedStruct

  typedstruct do
    field(:_generation, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_sourceMarkdown, Fhir.v6().Element)
    field(:_sourceString, Fhir.v6().Element)
    field(:_sourceUrl, Fhir.v6().Element)
    field(:_title, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:generation, :string)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:page, [Fhir.v6().ImplementationGuidePage], default: [])
    field(:sourceMarkdown, :string)
    field(:sourceString, :string)
    field(:sourceUrl, :string)
    field(:title, :string)
  end
end
