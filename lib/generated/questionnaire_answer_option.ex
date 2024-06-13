defmodule Fhir.Generated.QuestionnaireAnswerOption do
  use TypedStruct

  typedstruct do
    field :_initialSelected, Fhir.Generated.Element
        field :_valueDate, Fhir.Generated.Element
        field :_valueInteger, Fhir.Generated.Element
        field :_valueString, Fhir.Generated.Element
        field :_valueTime, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :initialSelected, :boolean
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :valueCoding, Fhir.Generated.Coding
        field :valueDate, :string
        field :valueInteger, :float
        field :valueReference, Fhir.Generated.Reference
        field :valueString, :string
        field :valueTime, :string
  end
end
