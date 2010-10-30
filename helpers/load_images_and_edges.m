function [heads, torsos, legs, head_edges, torso_edges, leg_edges] = load_images_and_edges(paths)
% LOAD_IMAGES_AND_EDGES Load images and sobel edges from paths and converts both to double.

head_size = 20;
torso_size = 40;
leg_size = 45;

heads = [];
torsos = [];
legs = [];
head_edges = [];
torso_edges = [];
leg_edges = [];

for i = 1:size(paths,2)
	image = double(imread(paths{i}));
	
	head = image(1:head_size, :);
	torso = image((head_size + 1):(head_size + torso_size), :);
	leg = image((head_size + torso_size + 1):size(image, 1), :);
	
  head_edge = sobel(head);
  torso_edge = sobel(torso);
  leg_edge = sobel(leg);
	
	if isempty(heads) || isempty(head_edges) || isempty(torsos) || isempty(torso_edges) || isempty(legs) || isempty(leg_edges)
		heads = zeros(numel(head),size(paths,2));
		head_edges = zeros(numel(head),size(paths,2));
		
		torsos = zeros(numel(torso),size(paths,2));
		torso_edges = zeros(numel(torso),size(paths,2));
		
		legs = zeros(numel(leg),size(paths,2));
		leg_edges = zeros(numel(leg),size(paths,2));
	end
	
	heads(:,i) = reshape(head,numel(head),1);
	head_edges(:,i) = reshape(head_edge,numel(head_edge),1);
	
	torsos(:,i) = reshape(torso,numel(torso),1);
	torso_edges(:,i) = reshape(torso_edge,numel(torso_edge),1);
	
	legs(:,i) = reshape(leg,numel(leg),1);
	leg_edges(:,i) = reshape(leg_edge, numel(leg_edge),1);
end


end