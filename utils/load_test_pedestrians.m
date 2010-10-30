if not(exist('pedgray', 'var') && exist('pededge', 'var'))
	disp('Loading test pedestrians...');
	[pedgray,pededge] = load_images_and_edges(dir_filenames(sprintf('data/%s/test/pedestrians', current_set), '\.jpg', true));
end