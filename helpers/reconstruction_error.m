function [d] = reconstruction_error(image,PC,setMean)
% RECONSTRUCTION_ERROR Computes the error of reconstruction on PCs.

d = norm(image - reconstruct_image(image,PC,setMean));
end