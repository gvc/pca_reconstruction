image_paths = dir_filenames(sprintf('data/%s/detect', current_set), '\.jpg$', true);

for i = 1:numel(image_paths)
	tic;
	image_path = image_paths{i};
	scan_image;
	toc
end