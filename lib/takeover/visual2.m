function visual2(V,fig)
if(nargin == 1)
    figure;
else
    figure(fig);
end

r=50;
    
hold on
    p = projectionPolyUnion(V, [1 2 3]);
%     P2 = Polyhedron('UB', [36; 5; 50], 'LB', [16;-2; -50]);
    P2 = Polyhedron('UB', [inf; inf; 50], 'LB', [-inf;-inf; -50]);
    plot(IntersectPolyUnion(p,P2), 'Color', 'r', 'alpha', 1, 'edgealpha', 1);
%     set(gca,'Xdir','reverse','Ydir','reverse');
    view(120,15);
    set(gca,'Ydir','reverse','Zdir','reverse');
    ylabel('ve');ylabel('ye'); zlabel('h');
    drawnow;
end