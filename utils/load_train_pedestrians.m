if not(exist('pedgray', 'var') && exist('pededge', 'var'))
	disp('Loading train pedestrians...');
	[pedgray,pededge] = load_images_and_edges(dir_filenames(sprintf('data/%s/train/pedestrians'), '\.jpg', true));
end