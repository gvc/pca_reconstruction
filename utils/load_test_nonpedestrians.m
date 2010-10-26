if not(exist('nongray', 'var') && exist('nonedge', 'var'))
	disp('Loading test non-pedestrians...');
	[nongray,nonedge] = load_images_and_edges(dir_filenames(sprintf('data/%s/test/nonpedestrians', current_set), '\.jpg', true));
end