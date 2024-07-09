defmodule Generated.PatientTest do
  use ExUnit.Case, async: true

  alias Fhir.CodeableConcept
  alias Fhir.Coding
  alias Fhir.HumanName
  alias Fhir.Identifier
  alias Fhir.Patient
  alias Fhir.PatientCommunication

  test "can load a patient" do
    {:ok, patient_json} =
      File.read!("test/fixtures/patient.json")
      |> Jason.decode()

    assert {:ok, %Patient{} = patient} = Patient.new(patient_json)
    assert patient.id == "example"

    assert patient.identifier == [
             %Identifier{
               system: "http://example.org/fhir/sid/mrn",
               value: "123456",
               use: :official
             }
           ]

    assert patient.name == [
             %HumanName{
               family: "Doe",
               given: "John",
               use: :official
             }
           ]

    assert patient.communication == [
             %PatientCommunication{
               language: %CodeableConcept{
                 coding: [
                   %Coding{
                     system: "urn:ietf:bcp:47",
                     code: "en",
                     display: "English"
                   }
                 ]
               },
               preferred: true
             }
           ]
  end
end
