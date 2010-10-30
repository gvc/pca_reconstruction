% Loads data, calculates PCAs and stores them on files.

load_paths;

numpcs = 200;

load_train_pedestrians;

disp 'HEAD'

disp 'Computing pedestrians grayscale mean...'
mngHp = mean(heads,2);

disp 'Computing pedestrians grayscale PCA...'
[PgHp,VgHp] = pca(heads);

disp 'Saving pedestrians grayscale PCAs...'
PgHp = PgHp(:,1:numpcs);
VgHp = VgHp(1:numpcs);
save(sprintf('data/%s/pgHp.mat', current_set), 'PgHp', 'VgHp', 'mngHp');

disp 'Clearing workspace...'
clear PgHp;
clear VgHp;
clear mngHp;

disp 'Computing pedestrians edge mean...'
mneHp = mean(head_edges,2);

disp 'Computing pedestrians edge PCA...'
[PeHp,VeHp] = pca(head_edges);

disp 'Saving pedestrians edge PCAs...'
PeHp = PeHp(:,1:numpcs);
VeHp = VeHp(1:numpcs);
save(sprintf('data/%s/peHp.mat', current_set), 'PeHp', 'VeHp', 'mneHp');

disp 'Clearing workspace...'
clear PeHp;
clear VeHp;
clear mneHp;

%%

disp 'TORSO'

disp 'Computing pedestrians grayscale mean...'
mngTp = mean(torsos,2);

disp 'Computing pedestrians grayscale PCA...'
[PgTp,VgTp] = pca(torsos);

disp 'Saving pedestrians grayscale PCAs...'
PgTp = PgTp(:,1:numpcs);
VgTp = VgTp(1:numpcs);
save(sprintf('data/%s/pgTp.mat', current_set), 'PgTp', 'VgTp', 'mngTp');

disp 'Clearing workspace...'
clear PgTp;
clear VgTp;
clear mngTp;

disp 'Computing pedestrians edge mean...'
mneTp = mean(torso_edges,2);

disp 'Computing pedestrians edge PCA...'
[PeTp,VeTp] = pca(torso_edges);

disp 'Saving pedestrians edge PCAs...'
PeTp = PeTp(:,1:numpcs);
VeTp = VeTp(1:numpcs);
save(sprintf('data/%s/peTp.mat', current_set), 'PeTp', 'VeTp', 'mneTp');

disp 'Clearing workspace...'
clear PeTp;
clear VeTp;
clear mneTp;

%%

disp 'LEGS'

disp 'Computing pedestrians grayscale mean...'
mngLp = mean(legs,2);

disp 'Computing pedestrians grayscale PCA...'
[PgLp,VgLp] = pca(legs);

disp 'Saving pedestrians grayscale PCAs...'
PgLp = PgLp(:,1:numpcs);
VgLp = VgLp(1:numpcs);
save(sprintf('data/%s/pgLp.mat', current_set), 'PgLp', 'VgLp', 'mngLp');

disp 'Clearing workspace...'
clear PgLp;
clear VgLp;
clear mngLp;

disp 'Computing pedestrians edge mean...'
mneLp = mean(leg_edges,2);

disp 'Computing pedestrians edge PCA...'
[PeLp,VeLp] = pca(leg_edges);

disp 'Saving pedestrians edge PCAs...'
PeLp = PeLp(:,1:numpcs);
VeLp = VeLp(1:numpcs);
save(sprintf('data/%s/peLp.mat', current_set), 'PeLp', 'VeLp', 'mneLp');

disp 'Clearing workspace...'
clear PeLp;
clear VeLp;
clear mneLp;

%

%%

load_train_nonpedestrians;

disp 'HEAD'

disp 'Computing pedestrians grayscale mean...'
mngHn = mean(nonheads,2);

disp 'Computing pedestrians grayscale PCA...'
[PgHn,VgHn] = pca(nonheads);

disp 'Saving pedestrians grayscale PCAs...'
PgHn = PgHn(:,1:numpcs);
VgHn = VgHn(1:numpcs);
save(sprintf('data/%s/pgHn.mat', current_set), 'PgHn', 'VgHn', 'mngHn');

disp 'Clearing workspace...'
clear PgHn;
clear VgHn;
clear mngHn;

disp 'Computing pedestrians edge mean...'
mneHn = mean(nonhead_edges,2);

disp 'Computing pedestrians edge PCA...'
[PeHn,VeHn] = pca(nonhead_edges);

disp 'Saving pedestrians edge PCAs...'
PeHn = PeHn(:,1:numpcs);
VeHn = VeHn(1:numpcs);
save(sprintf('data/%s/peHn.mat', current_set), 'PeHn', 'VeHn', 'mneHn');

disp 'Clearing workspace...'
clear PeHn;
clear VeHn;
clear mneHn;

%%

disp 'TORSO'

disp 'Computing pedestrians grayscale mean...'
mngTn = mean(nontorsos,2);

disp 'Computing pedestrians grayscale PCA...'
[PgTn,VgTn] = pca(nontorsos);

disp 'Saving pedestrians grayscale PCAs...'
PgTn = PgTn(:,1:numpcs);
VgTn = VgTn(1:numpcs);
save(sprintf('data/%s/pgTn.mat', current_set), 'PgTn', 'VgTn', 'mngTn');

disp 'Clearing workspace...'
clear PgTn;
clear VgTn;
clear mngTn;

disp 'Computing pedestrians edge mean...'
mneTn = mean(nontorso_edges,2);

disp 'Computing pedestrians edge PCA...'
[PeTn,VeTn] = pca(nontorso_edges);

disp 'Saving pedestrians edge PCAs...'
PeTn = PeTn(:,1:numpcs);
VeTn = VeTn(1:numpcs);
save(sprintf('data/%s/peTn.mat', current_set), 'PeTn', 'VeTn', 'mneTn');

disp 'Clearing workspace...'
clear PeTn;
clear VeTn;
clear mneTn;

%%

disp 'LEGS'

disp 'Computing pedestrians grayscale mean...'
mngLn = mean(nonlegs,2);

disp 'Computing pedestrians grayscale PCA...'
[PgLn,VgLn] = pca(nonlegs);

disp 'Saving pedestrians grayscale PCAs...'
PgLn = PgLn(:,1:numpcs);
VgLn = VgLn(1:numpcs);
save(sprintf('data/%s/pgLn.mat', current_set), 'PgLn', 'VgLn', 'mngLn');

disp 'Clearing workspace...'
clear PgLn;
clear VgLn;
clear mngLn;

disp 'Computing pedestrians edge mean...'
mneLn = mean(nonleg_edges,2);

disp 'Computing pedestrians edge PCA...'
[PeLn,VeLn] = pca(nonleg_edges);

disp 'Saving pedestrians edge PCAs...'
PeLn = PeLn(:,1:numpcs);
VeLn = VeLn(1:numpcs);
save(sprintf('data/%s/peLn.mat', current_set), 'PeLn', 'VeLn', 'mneLn');

disp 'Clearing workspace...'
clear PeLn;
clear VeLn;
clear mneLn;