defmodule Fhir.v6().TerminologyCapabilitiesCodeSystem do
  use TypedStruct

  typedstruct do
    field(:_content, Fhir.v6().Element)
    field(:_subsumption, Fhir.v6().Element)
    field(:content, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:subsumption, :boolean)
    field(:uri, :string)
    field(:version, [Fhir.v6().TerminologyCapabilitiesVersion], default: [])
  end
end
