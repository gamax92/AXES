<p align="center">
  <img src="https://github.com/jimaki/axes/blob/master/axes_icon_large.png" />
</p>

# AXES - 3D Lua Library
`Bring 3D to your favorite 2D engine.`

**AXES** is an easily portable 3D Lua engine made specifically but not implicitly for fantasy consoles such as TIC-80 or LIKO-12.

<p align="center">
  <img src="https://github.com/jimaki/AXES/blob/master/axes_liko12.gif" />
  <img src="https://github.com/jimaki/AXES/blob/master/axes_tic80.gif" width="52%" height="52%" />
</p>

## API:
### Functions:
- `init([cam_x,cam_y,cam_z,cam_theta_x,cam_theta_y,cam_theta_z,cam_fov,screen_height,screen_width])` - **[** *numbers* **]**
- `create_object(name,shape[,position[,wireframe[,fill[,color[,scale[,rotation[,solid]]]]]]])` - name **[** *string* **],** shape - [table](https://github.com/jimaki/axes#shape-definition)**,** position **[** *table* **[** `{x[1],y[2],z[3]}` **]** **],** wireframe **[** *boolean* **],** fill **[** *boolean* **],** color **[** *number* **],** scale **[** *number* **],** rotation **[** *table* **[** `{x[1],y[2],z[3]}` **]** **],** solid **[** *boolean* **]**
- `delete_object(name)` - **[** *string* **]**
- `draw_line(point1,point2[,color])` - points **[** *tables* **[** `{x[1],y[2],z[3]}` **]** **],** color **[** *number* **]**
- `draw_point(position[,color])` - position **[** *table* **[** `{x[1],y[2],z[3]}` **]** **],** color **[** *number* **]**
- `get_cam()` - returns a *table* **[** `{cam_x,cam_y,cam_z,cam_theta_x,cam_theta_y,cam_theta_z,cam_fov}` **]**
- `get_color(name)` - returns a *number*
- `get_fill(name)` - returns a *boolean*
- `get_position(name)` - returns a *table* **[** `{x[1],y[2],z[3]}` **]**
- `get_rotation(name)` - returns a *table* **[** `{x[1],y[2],z[3]}` **]**
- `get_scale(name)` - returns a *number*
- `get_solid(name)` - returns a *boolean*
- `get_wireframe(name)` - returns a *boolean*
- `move_cam([x[,y[,z[,theta_x[,theta_y[,theta_z]]]]]])` - **[** *numbers* **]**
- `set_cam([x[,y[,z[,theta_x[,theta_y[,theta_z]]]]]])` - **[** *numbers* **]**
- `set_color(name[,color])` - name **[** *string* **]**, color **[** *number* **]**
- `set_fill(name[,fill])` - name **[** *string* **]**, fill **[** *boolean* **]**
- `set_position(name[,position])` - name **[** *string* **],** position **[** *table* **[** `{x[1],y[2],z[3]}`**]** **]**
- `set_rotation(name[,rotation])` - name **[** *string* **],** rotation **[** *table* **[** `{x[1],y[2],z[3]}` **]** **]**
- `set_scale(name[,scale])` - name **[** *string* **],** scale **[** *number* **]**
- `set_solid(name[,solid])` - name **[** *string* **]**, solid **[** *boolean* **]**
- `set_wireframe(name[,wireframe])` - name **[** *string* **],** wireframe **[** *boolean* **]**
- `update([cam])` - '*plane*' **/** '*free*' **[** *string* **]**
### Variables:
- `debug` - **[** *boolean* **]**
- `shapes` - [table](https://github.com/jimaki/axes#shape-definition)
  * `tetrahedron`
  * `octahedron`
  * `cube`
  * `icosahedron`
  * `dodecahedron`
  * `pyramid`

## Shape definition:
```
- name  
  - faces  
    - vertices (>=3)  
      - coordinates (x,y,z)  
```
```lua
name={
  {{x1,y1,z1}, {x2,y2,z2}, {x3,y3,z3}, ...},
  {{x1,y1,z1}, {x2,y2,z2}, {x3,y3,z3}, ...},
  ...
}
```

## Demo:
```lua
---------------- demo ----------------
------------- initialize -------------
function _init()
  --initialize axes
  a=axes.init({screen_width=192,screen_height=128})
  --create objects
  --syntax:create_object(name,shape[,position[,wireframe[,fill[,color[,scale[,rotation[,solid]]]]]]])
  a:create_object('tet',a.shapes.tetrahedron,{-2.5,0.5,2.5},true,true,8,0.5,{0,0,0},true)
  a:create_object('oct',a.shapes.octahedron,{2.5,0.5,2.5},true,true,10,0.5,{0,0,0},true)
  a:create_object('cub',a.shapes.cube,{2.5,0.5,-2.5},true,true,11,0.5,{0,0,0},true)
  a:create_object('ico',a.shapes.icosahedron,{-2.5,0.5,-2.5},true,true,12,0.5,{0,0,0},true)
  a:create_object('dod',a.shapes.dodecahedron,{0,1,0},true,true,14,1,{0,0,0},true)
  a:create_object('pyr1',a.shapes.pyramid,{-10,4,0},true,true,15,4,{0,0,0},true)
  a:create_object('pyr2',a.shapes.pyramid,{0,4,10},true,true,15,4,{0,0,0},true)
  a:create_object('pyr3',a.shapes.pyramid,{10,4,0},true,true,15,4,{0,0,0},true)
  --initialize time
  t=0
end
--------------- update ---------------
function _update(dt)
  --clear screen
  clear(1)
  --rotate objects
  --syntax:set_rotation(name[,rotation])
  a:set_rotation('tet',{t*2,0,0})
  a:set_rotation('oct',{0,t*2,0})
  a:set_rotation('cub',{0,0,t*2})
  a:set_rotation('ico',{t*2,t*2,t*2})
  a:set_rotation('dod',{t*2,t*2,t*2})
  --draw grid
  --syntax:draw_line(point1,point2[,color])
  for i=0,8 do a:draw_line({-4+i,0,-4},{-4+i,0,4},13) end
  for i=0,8 do a:draw_line({-4,0,4-i},{4,0,4-i},13) end
  --toggle debug mode
  if btnp(5) and btnp(6) then a.debug=not a.debug end
  --update
  --syntax:update([cam])
  a:update('plane')
  --add time
  t=t+1
end
```

## To-Do:
- `2.0.0`
  * light source
  * dithering
- `3.0.0`
  * raytracing
  * skybox
  * shadows
- `4.0.0`
  * physics
  * Blender support

## Known issues:
- z-ordering only applies to objects
- imperfect z-ordering
- see-through objects at collisions

## License:
See [MIT LICENSE](https://github.com/jimaki/axes/blob/master/LICENSE)

## Version: `1.0.0`
**<>** with <img src="https://github.com/jimaki/axes/blob/master/red_heart_emoji.png" width="2%" height="2%" /> by **JIMAKI**

## Contact:
For any questions about this software or anything related to it, contact me at **jimaki@riseup.net**
