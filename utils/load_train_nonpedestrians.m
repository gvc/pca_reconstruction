if not(exist('nongray', 'var') && exist('nonedge', 'var'))
	disp('Loading train non-pedestrians...');
	[nongray,nonedge] = load_images_and_edges(dir_filenames('data/Set #1/train/nonpedestrians', '\.jpg', true));
end