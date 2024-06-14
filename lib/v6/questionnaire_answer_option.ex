defmodule Fhir.v6().QuestionnaireAnswerOption do
  use TypedStruct

  typedstruct do
    field(:_initialSelected, Fhir.v6().Element)
    field(:_valueDate, Fhir.v6().Element)
    field(:_valueInteger, Fhir.v6().Element)
    field(:_valueString, Fhir.v6().Element)
    field(:_valueTime, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:initialSelected, :boolean)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:valueCoding, Fhir.v6().Coding)
    field(:valueDate, :string)
    field(:valueInteger, :float)
    field(:valueReference, Fhir.v6().Reference)
    field(:valueString, :string)
    field(:valueTime, :string)
  end
end
