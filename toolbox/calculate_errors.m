% Calculates reconstructions errors.

load_paths;
load_pcs;
load_test_samples;

%pedestrians
% PgHpx
% PgTpx
% PgLpx
% PeHpx
% PeTpx
% PeLpx
%nonpedestrians
% PgHnx
% PgTnx
% PgLnx
% PeHnx
% PeTnx
% PeLnx

%Médias pedestrians
% mngHp
% mngTp
% mngLp
% mneHp
% mneTp
% mneLp
%Médias nonpedestrians
% mngHn
% mngTn
% mngLn
% mneHn
% mneTn
% mneLn

if not(exist('pgp_head_ped_errors','var') && exist('pgp_head_non_errors','var'))
	disp('Calculating pedestrians errors...');
	[pgp_head_ped_errors, pep_head_ped_errors, pgn_head_ped_errors, pen_head_ped_errors] = ...
		batch_all_errors(heads, head_edges, PgHpx, PeHpx, PgHnx, PeHnx, mngHp, mneHp, mngHn, mneHn);

	disp('Calculating non-pedestrians errors...');
	[pgp_head_non_errors, pep_head_non_errors, pgn_head_non_errors, pen_head_non_errors] = ...
		batch_all_errors(nonheads, nonhead_edges, PgHpx, PeHpx, PgHnx, PeHnx, mngHp, mneHp, mngHn, mneHn);
end

if not(exist('pgp_torso_ped_errors','var') && exist('pgp_torso_non_errors','var'))
	disp('Calculating pedestrians errors...');
	[pgp_torso_ped_errors, pep_torso_ped_errors, pgn_torso_ped_errors, pen_torso_ped_errors] = ...
		batch_all_errors(torsos,torso_edges,PgTpx,PeTpx,PgTnx,PeTnx,mngTp,mneTp,mngTn,mneTn);

	disp('Calculating non-pedestrians errors...');
	[pgp_torso_non_errors, pep_torso_non_errors, pgn_torso_non_errors, pen_torso_non_errors] = ...
		batch_all_errors(nontorsos,nontorso_edges,PgTpx,PeTpx,PgTnx,PeTnx,mngTp,mneTp,mngTn,mneTn);
end

if not(exist('pgp_legs_ped_errors','var') && exist('pgp_legs_non_errors','var'))
	disp('Calculating pedestrians errors...');
	[pgp_legs_ped_errors,pep_legs_ped_errors, pgn_legs_ped_errors, pen_legs_ped_errors] = ...
		batch_all_errors(legs,leg_edges,PgLpx,PeLpx,PgLnx,PeLnx,mngLp,mneLp,mngLn,mneLn);

	disp('Calculating non-pedestrians errors...');
	[pgp_legs_non_errors, pep_legs_non_errors, pgn_legs_non_errors, pen_legs_non_errors] = ...
		batch_all_errors(nonlegs,nonleg_edges,PgLpx,PeLpx,PgLnx,PeLnx,mngLp,mneLp,mngLn,mneLn);
end

total_ped_errors = pgn_head_ped_errors + pen_head_ped_errors + pgn_torso_ped_errors + pen_torso_ped_errors ...
  + pgn_legs_ped_errors + pen_legs_ped_errors - (pgp_head_ped_errors + pep_head_ped_errors + pgp_torso_ped_errors ...
  + pep_torso_ped_errors + pgp_legs_ped_errors + pep_legs_ped_errors);

total_non_errors =   pgn_head_non_errors + pen_head_non_errors + pgn_torso_non_errors + pen_torso_non_errors ...
    + pgn_legs_non_errors + pen_legs_non_errors - (pgp_head_non_errors + pep_head_non_errors + pgp_torso_non_errors ...
    + pep_torso_non_errors + pgp_legs_non_errors + pep_legs_non_errors);

% total_ped_errors = weights.pgn*pgn_ped_errors + weights.pen*pen_ped_errors - (weights.pgp*pgp_ped_errors + weights.pep*pep_ped_errors);
% total_non_errors = weights.pgn*pgn_non_errors + weights.pen*pen_non_errors - (weights.pgp*pgp_non_errors + weights.pep*pep_non_errors);
% 
% gray_ped_errors = weights.pgn*pgn_ped_errors - weights.pgp*pgp_ped_errors;
% edge_ped_errors = weights.pen*pen_ped_errors - weights.pep*pep_ped_errors;
% gray_non_errors = weights.pgn*pgn_non_errors - weights.pgp*pgp_non_errors;
% edge_non_errors = weights.pen*pen_non_errors - weights.pep*pep_non_errors;
% 
% 
% % pos_ped_errors = weights.pgp*pgp_ped_errors + weights.pep*pep_ped_errors;
% % neg_ped_errors = weights.pgn*pgn_ped_errors + weights.pen*pen_ped_errors;
% % pos_non_errors = weights.pgp*pgp_non_errors + weights.pep*pep_non_errors;
% % neg_non_errors = weights.pgn*pgn_non_errors + weights.pen*pen_non_errors;
