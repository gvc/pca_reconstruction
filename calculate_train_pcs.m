% Loads data, calculates PCAs and stores them on files.

load_paths;

%%

numpcs = 200;

%%

load_train_pedestrians;

disp 'Computing pedestrians grayscale mean...'
mngp = mean(pedgray,2);

disp 'Computing pedestrians grayscale PCA...'
[Pgp,Vgp] = pca(pedgray);

disp 'Saving pedestrians grayscale PCAs...'
Pgp = Pgp(:,1:numpcs);
Vgp = Vgp(1:numpcs);
save(sprintf('data/%s/pgp.mat', current_set), 'Pgp', 'Vgp', 'mngp');

disp 'Clearing workspace...'
clear Pgp;
clear Vgp;
clear mngp;

%

disp 'Computing pedestrians edge mean...'
mnep = mean(pededge,2);

disp 'Computing pedestrians edge PCA...'
[Pep,Vep] = pca(pededge);

disp 'Saving pedestrians edge PCAs...'
Pep = Pep(:,1:numpcs);
Vep = Vep(1:numpcs);
save(sprintf('data/%s/pep.mat', current_set), 'Pep', 'Vep', 'mnep');

disp 'Clearing workspace...'
clear Pep;
clear Vep;
clear mnep;

%%

load_train_nonpedestrians;

disp 'Computing non-pedestrians grayscale mean...'
mngn = mean(nongray,2);

disp 'Computing non-pedestrians grayscale PCA...'
[Pgn,Vgn] = pca(nongray);

disp 'Saving non-pedestrians grayscale PCAs...'
Pgn = Pgn(:,1:numpcs);
Vgn = Vgn(1:numpcs);
save(sprintf('data/%s/pgn.mat', current_set), 'Pgn', 'Vgn', 'mngn');

disp 'Clearing workspace...'
clear Pgn;
clear Vgn;
clear mngn;

%

disp 'Computing non-pedestrians edge mean...'
mnen = mean(nonedge,2);

disp 'Computing non-pedestrians edge PCA...'
[Pen,Ven] = pca(nonedge);

disp 'Saving non-pedestrians edge PCAs...'
Pen = Pen(:,1:numpcs);
Ven = Ven(1:numpcs);
save(sprintf('data/%s/pen.mat', current_set), 'Pen', 'Ven', 'mnen');

disp 'Clearing workspace...'
clear Pen;
clear Ven;
clear mnen;