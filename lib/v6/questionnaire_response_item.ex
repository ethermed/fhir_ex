defmodule Fhir.v6().QuestionnaireResponseItem do
  use TypedStruct

  typedstruct do
    field(:_definition, Fhir.v6().Element)
    field(:_linkId, Fhir.v6().Element)
    field(:_text, Fhir.v6().Element)
    field(:answer, [Fhir.v6().QuestionnaireResponseAnswer], default: [])
    field(:definition, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:item, [Fhir.v6().QuestionnaireResponseItem], default: [])
    field(:linkId, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:text, :string)
  end
end
