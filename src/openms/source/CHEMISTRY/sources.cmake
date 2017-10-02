### the directory name
set(directory source/CHEMISTRY)

### list all filenames of the directory here
set(sources_list
AASequence.cpp
CrossLinksDB.cpp
Element.cpp
ElementDB.cpp
EmpiricalFormula.cpp
EnzymaticDigestionLogModel.cpp
EnzymaticDigestion.cpp
Enzyme.cpp
EnzymesDB.cpp
IsotopeDistribution.cpp
ModificationDefinition.cpp
ModificationDefinitionsSet.cpp
ModificationsDB.cpp
ModifierRep.cpp
ModifiedNASequenceGenerator.cpp
NASequence.cpp
PepIterator.cpp
Residue.cpp
ResidueDB.cpp
ResidueModification.cpp
Ribonucleotide.cpp
RibonucleotideDB.cpp
SpectrumAnnotator.cpp
SvmTheoreticalSpectrumGenerator.cpp
SvmTheoreticalSpectrumGeneratorTrainer.cpp
SvmTheoreticalSpectrumGeneratorSet.cpp
TheoreticalSpectrumGenerator.cpp
TheoreticalSpectrumGeneratorXLMS.cpp
TrypticIterator.cpp
WeightWrapper.cpp
)

### add path to the filenames
set(sources)
foreach(i ${sources_list})
	list(APPEND sources ${directory}/${i})
endforeach(i)

### pass source file list to the upper instance
set(OpenMS_sources ${OpenMS_sources} ${sources})

### source group definition
source_group("Source Files\\CHEMISTRY" FILES ${sources})

