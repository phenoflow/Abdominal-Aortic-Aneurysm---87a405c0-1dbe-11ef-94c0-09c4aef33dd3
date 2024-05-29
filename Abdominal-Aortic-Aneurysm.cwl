cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  abdominal-aortic-aneurysm-aaa-rupture---primary:
    run: abdominal-aortic-aneurysm-aaa-rupture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  abdominal-aortic-aneurysm-aaa---primary:
    run: abdominal-aortic-aneurysm-aaa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: abdominal-aortic-aneurysm-aaa-rupture---primary/output
  aneurysm---primary:
    run: aneurysm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: abdominal-aortic-aneurysm-aaa---primary/output
  suprarenal-abdominal-aortic-aneurysm-aaa---primary:
    run: suprarenal-abdominal-aortic-aneurysm-aaa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: aneurysm---primary/output
  abdominal-aortic-aneurysm-aaa-replace---primary:
    run: abdominal-aortic-aneurysm-aaa-replace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: suprarenal-abdominal-aortic-aneurysm-aaa---primary/output
  abdominal-aortic-aneurysm-aaa-graft---primary:
    run: abdominal-aortic-aneurysm-aaa-graft---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: abdominal-aortic-aneurysm-aaa-replace---primary/output
  abdominal-aortic-aneurysm-aaa-emerg---primary:
    run: abdominal-aortic-aneurysm-aaa-emerg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: abdominal-aortic-aneurysm-aaa-graft---primary/output
  abdominal-aortic-aneurysm-aaa-aortouniiliac---primary:
    run: abdominal-aortic-aneurysm-aaa-aortouniiliac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: abdominal-aortic-aneurysm-aaa-emerg---primary/output
  abdominal-aortic-aneurysm-aaa-specified---primary:
    run: abdominal-aortic-aneurysm-aaa-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: abdominal-aortic-aneurysm-aaa-aortouniiliac---primary/output
  abdominal-aortic-aneurysm-aaa-ascending---primary:
    run: abdominal-aortic-aneurysm-aaa-ascending---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: abdominal-aortic-aneurysm-aaa-specified---primary/output
  abdominal-aortic-aneurysm-aaa-anast---primary:
    run: abdominal-aortic-aneurysm-aaa-anast---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: abdominal-aortic-aneurysm-aaa-ascending---primary/output
  abdominal-aortic-aneurysm-aaa-operation---primary:
    run: abdominal-aortic-aneurysm-aaa-operation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: abdominal-aortic-aneurysm-aaa-anast---primary/output
  infrarenal-abdominal-aortic-aneurysm-aaa---primary:
    run: infrarenal-abdominal-aortic-aneurysm-aaa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: abdominal-aortic-aneurysm-aaa-operation---primary/output
  abdominal-aortic-aneurysm-aaa-position---primary:
    run: abdominal-aortic-aneurysm-aaa-position---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: infrarenal-abdominal-aortic-aneurysm-aaa---primary/output
  abdominal-aortic-aneurysm-aaa-bifurc---primary:
    run: abdominal-aortic-aneurysm-aaa-bifurc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: abdominal-aortic-aneurysm-aaa-position---primary/output
  transluminal-abdominal-aortic-aneurysm-aaa---primary:
    run: transluminal-abdominal-aortic-aneurysm-aaa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: abdominal-aortic-aneurysm-aaa-bifurc---primary/output
  thoracic-abdominal-aortic-aneurysm-aaa---primary:
    run: thoracic-abdominal-aortic-aneurysm-aaa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: transluminal-abdominal-aortic-aneurysm-aaa---primary/output
  abdominal-aortic-aneurysm-aaa-dissection---primary:
    run: abdominal-aortic-aneurysm-aaa-dissection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: thoracic-abdominal-aortic-aneurysm-aaa---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: abdominal-aortic-aneurysm-aaa-dissection---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
