% Load PCAs and/or change the numbers of PCs accordingly to k

k = 200;

disp(sprintf('Loading PCs (k = %d)...', k));

load(sprintf('data/%s/pgHp.mat', current_set));
PgHpx = PgHp(:,1:k);
clear PgHp VgHp;

load(sprintf('data/%s/peHp.mat', current_set));
PeHpx = PeHp(:,1:k);
clear PeHp VeHp;

load(sprintf('data/%s/pgTp.mat', current_set));
PgTpx = PgTp(:,1:k);
clear PgTp VgTp;

load(sprintf('data/%s/peTp.mat', current_set));
PeTpx = PeTp(:,1:k);
clear PeTp VeTp;

load(sprintf('data/%s/pgLp.mat', current_set));
PgLpx = PgLp(:,1:k);
clear PgLp VgLp;

load(sprintf('data/%s/peLp.mat', current_set));
PeLpx = PeLp(:,1:k);
clear PeLp VeLp;

%%

load(sprintf('data/%s/pgHn.mat', current_set));
PgHnx = PgHn(:,1:k);     
clear PgHn VgHn;         
                         
load(sprintf('data/%s/peHn.mat', current_set));
PeHnx = PeHn(:,1:k);     
clear PeHn VeHn;         
                         
load(sprintf('data/%s/pgTn.mat', current_set));
PgTnx = PgTn(:,1:k);     
clear PgTn VgTn;         
                         
load(sprintf('data/%s/peTn.mat', current_set));
PeTnx = PeTn(:,1:k);     
clear PeTn VeTn;         
                         
load(sprintf('data/%s/pgLn.mat', current_set));
PgLnx = PgLn(:,1:k);     
clear PgLn VgLn;         
                         
load(sprintf('data/%s/peLn.mat', current_set));
PeLnx = PeLn(:,1:k);
clear PeLn VeLn;

if not(exist('weights', 'var'))
	weights.pgp = 1;
	weights.pep = 1;
	weights.pgn = 1;
	weights.pen = 1;
end

clear should_load;