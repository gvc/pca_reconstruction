if not(exist('heads', 'var') && exist('head_edges', 'var') && exist('torsos', 'var') && exist('legs', 'var') && exist('torso_edges', 'var') && exist('leg_edges', 'var'))
	disp('Loading train pedestrians...');
	disp('Using MODULAR PCA');
	[heads, torsos, legs, head_edges, torso_edges, leg_edges] = load_images_and_edges(dir_filenames(sprintf('data/%s/train/pedestrians', current_set), '\.jpg', true));
end