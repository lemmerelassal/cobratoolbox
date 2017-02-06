function status = testBiomassPrecursorCheck()
% tests the Biomass function using Ecoli core model

% Load required variables: Ecoli core model and reference
load Ecoli_core_model.mat
load ref.mat

% Call function
[new.missingMets,new.presentMets] = biomassPrecursorCheck(model);

% Check if function is working
status = isequal(ref,new);

end
