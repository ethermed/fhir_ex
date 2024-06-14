defmodule Fhir.TerminologyCapabilitiesCodeSystem do
  use TypedStruct

  typedstruct do
    field(:_content, Fhir.Element)
    field(:_subsumption, Fhir.Element)
    field(:content, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:subsumption, :boolean)
    field(:uri, :string)
    field(:version, [Fhir.TerminologyCapabilitiesVersion], default: [])
  end
end
