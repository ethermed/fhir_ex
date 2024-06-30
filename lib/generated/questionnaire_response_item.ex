defmodule Fhir.QuestionnaireResponseItem do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_definition, Fhir.Element)
    field(:_linkId, Fhir.Element)
    field(:_text, Fhir.Element)
    field(:answer, [Fhir.QuestionnaireResponseAnswer], default: [])
    field(:definition, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:item, [Fhir.QuestionnaireResponseItem], default: [])
    field(:linkId, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:text, :string)
  end
end
