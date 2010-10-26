% Load PCAs and/or change the numbers of PCs accordingly to k

if exist('k','var')
	if exist('Pgpx') && exist('Pepx') && exist('Pgnx') && exist('Penx')
		if size(Pgpx,2) >= k || size(Pepx,2) >= k || size(Pgnx,2) >= k || size(Penx,2) >= k
			should_load = false;
			Pgpx = Pgpx(:,1:k);
			Pepx = Pepx(:,1:k);
			Pgnx = Pgnx(:,1:k);
			Penx = Penx(:,1:k);
		else
			should_load = true;
		end
	else
		should_load = true;
	end
else
	k = 200;
	should_load = true;
end


if should_load
	disp(sprintf('Loading PCs (k = %d)...', k));

	load(sprintf('data/%s/pgp.mat', current_set));
	Pgpx = Pgp(:,1:k);
	clear Pgp Vgp;
	
	load(sprintf('data/%s/pep.mat', current_set));
	Pepx = Pep(:,1:k);
	clear Pep Vep;
	
	load(sprintf('data/%s/pgn.mat', current_set));
	Pgnx = Pgn(:,1:k);
	clear Pgn Vgn;
	
	load(sprintf('data/%s/pen.mat', current_set));
	Penx = Pen(:,1:k);
	clear Pen Ven;
end

if not(exist('weights', 'var'))
	weights.pgp = 1;
	weights.pep = 1;
	weights.pgn = 1;
	weights.pen = 1;
end

clear should_load;