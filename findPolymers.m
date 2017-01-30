function [res] = findPolymers(model)
%findPolymers
%
% Input:
% model     COBRA model
% Output:
% res       boolean vector; 1 = polymer, 0 otherwise
%
% Lemmer El Assal, Nov 2016

has_X = cellfun(@(x) numAtomsOfElementInFormula(x,'X'),model.metFormulas);
has_R = cellfun(@(x) numAtomsOfElementInFormula(x,'R'),model.metFormulas);
res = has_X | has_R;

end