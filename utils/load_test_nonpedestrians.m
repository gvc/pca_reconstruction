if not(exist('nonheads', 'var') && exist('nonhead_edges', 'var') && exist('nontorsos', 'var') && exist('nonlegs', 'var') && exist('nontorso_edges', 'var') && exist('nonleg_edges', 'var'))
	disp('Loading test non-pedestrians...');
	[nonheads, nontorsos, nonlegs, nonhead_edges, nontorso_edges, nonleg_edges] = load_images_and_edges(dir_filenames(sprintf('data/%s/test/nonpedestrians', current_set), '\.jpg', true));
end