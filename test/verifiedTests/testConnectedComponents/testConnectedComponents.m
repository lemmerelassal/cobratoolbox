function status = testConnectedComponents()
% tests the connectedComponents function using Recon1

% Load required variables: Recon1 model and Expression Data
load Ecoli_core_model.mat
load ref.mat

% Call function
[new.groups,new.orphans,new.R,new.C]=connectedComponents(model);

% Check if function is working
status = isequal(ref,new);

end
