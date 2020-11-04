function [bestEpsilon bestF1] = selectThreshold(yval, pval)
%SELECTTHRESHOLD Find the best threshold (epsilon) to use for selecting
%outliers

bestEpsilon = 0;
bestF1 = 0;
F1 = 0;

stepsize = (max(pval) - min(pval)) / 1000;
for epsilon = min(pval):stepsize:max(pval)
    
    % Compute the F1 score of choosing epsilon as 
    % threshold and place the value in F1

      cvPredictions = (pval < epsilon);     % m x 1 
      
      tp = sum((cvPredictions == 1) & (yval == 1)); % m x 1
      fp = sum((cvPredictions == 1) & (yval == 0)); % m x 1
      fn = sum((cvPredictions == 0) & (yval == 1)); % m x 1
      
      prec = tp/(tp+fp); 
      rec = tp/(tp+fn);
      
      F1 = 2*prec*rec / (prec + rec);

    % =============================================================
     % Compare F1 score for choice of epsilon and set it to be the best 
     % epsilon if better than the current choice of epsilon   
    
    if F1 > bestF1
       bestF1 = F1;
       bestEpsilon = epsilon;
    end
end

end
