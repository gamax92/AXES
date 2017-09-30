---------------- demo ----------------
------------- initialize -------------
function _init()
  --initialize axes
  a=axes.init({screen_width=240,screen_height=136})
  --create objects
  --syntax:create_object(name,shape[,position[,wireframe[,fill[,color[,scale[,rotation[,solid]]]]]]])
  a:create_object('tet',a.shapes.tetrahedron,{-2.5,0.5,2.5},true,true,6,0.5,{0,0,0},true)
  a:create_object('oct',a.shapes.octahedron,{2.5,0.5,2.5},true,true,14,0.5,{0,0,0},true)
  a:create_object('cub',a.shapes.cube,{2.5,0.5,-2.5},true,true,11,0.5,{0,0,0},true)
  a:create_object('ico',a.shapes.icosahedron,{-2.5,0.5,-2.5},true,true,8,0.5,{0,0,0},true)
  a:create_object('dod',a.shapes.dodecahedron,{0,1,0},true,true,9,1,{0,0,0},true)
  a:create_object('pyr1',a.shapes.pyramid,{-10,4,0},true,true,12,4,{0,0,0},true)
  a:create_object('pyr2',a.shapes.pyramid,{0,4,10},true,true,12,4,{0,0,0},true)
  a:create_object('pyr3',a.shapes.pyramid,{10,4,0},true,true,12,4,{0,0,0},true)
  --initialize time
  t=0
end
--------------- update ---------------
function _update(dt)
  --clear screen
  cls(13)
  --rotate objects
  --syntax:set_rotation(name[,rotation])
  a:set_rotation('tet',{t*2,0,0})
  a:set_rotation('oct',{0,t*2,0})
  a:set_rotation('cub',{0,0,t*2})
  a:set_rotation('ico',{t*2,t*2,t*2})
  a:set_rotation('dod',{t*2,t*2,t*2})
  --draw grid
  --syntax:draw_line(point1,point2[,color])
  for i=0,8 do a:draw_line({-4+i,0,-4},{-4+i,0,4},4) end
  for i=0,8 do a:draw_line({-4,0,4-i},{4,0,4-i},4) end
  --toggle debug mode
  if btnp(5) and btnp(6) then a.debug=not a.debug end
  --update
  --syntax:update([cam])
  a:update('plane')
  --add time
  t=t+1
end
