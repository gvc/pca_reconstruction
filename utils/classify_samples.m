% Classify loaded samples, shows results and saves the ROC curve.

load_paths;
load_pcs;

clear_errors;

%%

clear weights;
load_pcs;
calculate_errors;

disp('Classifying test pedestrians with TOTAL error...');
pederr = total_ped_errors;

disp('Classifying test non-pedestrians TOTAL error...');
nonerr = total_non_errors;

threshold = mean([mean(pederr) mean(nonerr)]);

tp = numel(find(pederr >= threshold));
fn = numel(find(pederr < threshold));
tn = numel(find(nonerr < threshold));
fp = numel(find(nonerr >= threshold));

scores = [pederr(:); nonerr(:)];
classes = [true(numel(pederr), 1); false(numel(nonerr), 1)];
auc_tot = rocplot(scores, classes);
title('ROC of classification based total error');
print('data/charts/roc_total.pdf', '-dpdf');
close;

display_classification_summary(k,threshold,tp,fn,tn,fp,auc_tot);
clear scores classes threshold;

%%

disp('Classifying test pedestrians with partial GRAYSCALE error...');
pederr = pgn_ped_errors - pgp_ped_errors;

disp('Classifying test non-pedestrians partial GRAYSCALE error...');
nonerr = pgn_non_errors - pgp_non_errors;

threshold = mean([mean(pederr) mean(nonerr)]);

tp = numel(find(pederr >= threshold));
fn = numel(find(pederr < threshold));
tn = numel(find(nonerr < threshold));
fp = numel(find(nonerr >= threshold));

scores = [pederr(:); nonerr(:)];
classes = [true(numel(pederr), 1); false(numel(nonerr), 1)];
auc_neg = rocplot(scores, classes);
title('ROC of classification based on grayscale PCs only');
print('data/charts/roc_grayscale.pdf', '-dpdf');
close;

display_classification_summary(k,threshold,tp,fn,tn,fp,auc_neg);
clear scores classes threshold;

%%

disp('Classifying test pedestrians with partial EDGE error...');
pederr = pen_ped_errors - pep_ped_errors;

disp('Classifying test non-pedestrians partial EDGE error...');
nonerr = pen_non_errors - pep_non_errors;

threshold = mean([mean(pederr) mean(nonerr)]);

tp = numel(find(pederr >= threshold));
fn = numel(find(pederr < threshold));
tn = numel(find(nonerr < threshold));
fp = numel(find(nonerr >= threshold));

scores = [pederr(:); nonerr(:)];
classes = [true(numel(pederr), 1); false(numel(nonerr), 1)];
auc_neg = rocplot(scores, classes);
title('ROC of classification based on edge PCs only');
print('data/charts/roc_edge.pdf', '-dpdf');
close;

display_classification_summary(k,threshold,tp,fn,tn,fp,auc_neg);
clear scores classes threshold;

%%

%%

disp('Classifying test pedestrians with partial POSITIVE error...');
pederr = -(pgp_ped_errors + pep_ped_errors);

disp('Classifying test non-pedestrians partial POSITIVE error...');
nonerr = -(pgp_non_errors + pep_non_errors);

threshold = mean([mean(pederr) mean(nonerr)]);

tp = numel(find(pederr >= threshold));
fn = numel(find(pederr < threshold));
tn = numel(find(nonerr < threshold));
fp = numel(find(nonerr >= threshold));

scores = [pederr(:); nonerr(:)];
classes = [true(numel(pederr), 1); false(numel(nonerr), 1)];
auc_pos = rocplot(scores, classes);
title('ROC of classification based on positive PCs only');
print('data/charts/roc_positive.pdf', '-dpdf');
close;

display_classification_summary(k,threshold,tp,fn,tn,fp,auc_pos);
clear scores classes threshold;

%%

disp('Classifying test pedestrians with partial NEGATIVE error...');
pederr = pgn_ped_errors + pen_ped_errors;

disp('Classifying test non-pedestrians partial NEGATIVE error...');
nonerr = pgn_non_errors + pen_non_errors;

threshold = mean([mean(pederr) mean(nonerr)]);

tp = numel(find(pederr >= threshold));
fn = numel(find(pederr < threshold));
tn = numel(find(nonerr < threshold));
fp = numel(find(nonerr >= threshold));

scores = [pederr(:); nonerr(:)];
classes = [true(numel(pederr), 1); false(numel(nonerr), 1)];
auc_neg = rocplot(scores, classes);
title('ROC of classification based on negative PCs only');
print('data/charts/roc_negative.pdf', '-dpdf');
close;

display_classification_summary(k,threshold,tp,fn,tn,fp,auc_neg);
clear scores classes threshold;

%%

clear weights;
load data/weights.mat;
calculate_errors;

disp('Classifying test pedestrians with WEIGHTED error...');
pederr = total_ped_errors;

disp('Classifying test non-pedestrians WEIGHTED error...');
nonerr = total_non_errors;

threshold = mean([mean(pederr) mean(nonerr)]);

tp = numel(find(pederr >= threshold));
fn = numel(find(pederr < threshold));
tn = numel(find(nonerr < threshold));
fp = numel(find(nonerr >= threshold));

scores = [pederr(:); nonerr(:)];
classes = [true(numel(pederr), 1); false(numel(nonerr), 1)];
auc_tot = rocplot(scores, classes);
title('ROC of classification based weighted total error');
print('data/charts/roc_total_weighted.pdf', '-dpdf');
close;

display_classification_summary(k,threshold,tp,fn,tn,fp,auc_tot);
clear scores classes;