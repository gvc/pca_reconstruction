if not(exist('nongray', 'var') && exist('nonedge', 'var'))
	disp('Loading train non-pedestrians...');
	[nongray,nonedge] = load_images_and_edges(dir_filenames(sprintf('data/%s/train/nonpedestrians', current_set), '\.jpg', true));
end