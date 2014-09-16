function d = forcecoord(point, varargin)
%This evaluates the resultant force using the xyz coordinates input forces (entered as arrays) and the point we are evaluating
%these forces from (i.e. the center of the free body diagram)
M = zeros(3,nargin()-1); %creates a matrix with 3 rows (x,y,z) and however many forces is the number of columns
for i=1:(nargin()-1)
    M(:,i) = varargin{i'}; %each force gets a column in the array
end
point = point';
for i=1:3 %dx = x-xpoint, dy = y-ypoint, dz = z-zpoint for all forces
    dxyz(i,:) = M(i,:) - point(i,1);
end
dxyz %It will print dxyz now that they have all been calculated
for i=1:(nargin()-1)
    d(:,i) = norm(dxyz(:,i)); %d = sqrt(dx^2 + dy^2 + dz^2)
end
end