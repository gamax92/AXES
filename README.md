<p align="center">
  <img src="https://github.com/jimaki/axes/blob/master/axes_icon_large.png" />
</p>

# AXES - 3D Lua Library
`Bring 3D to your favorite 2D engine.`

**AXES** is an easily portable **3D Lua library** made specifically but not implicitly for fantasy consoles such as **TIC-80** or **LIKO-12**.

<p align="center">
  <b> BUY THE ORIGINAL SOURCE CODE AND SUPPORT ME <a href="https://gum.co/AXESengine">HERE </a> </b>
</p>

**Use** of this library is **for free**, but because time is money, I need to cover up the expenses it has made, so if you want the **normal** (*not minified*) version of the source code, please consider buying it for **4.99$ on Gumroad** and directly support the further development of this library, **thank you**.
  
<p align="center">
  <img src="https://github.com/jimaki/AXES/blob/master/axes_liko12.gif" />
  <img src="https://github.com/jimaki/AXES/blob/master/axes_tic80.gif" width="51%" height="51%" />
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

## To-Do:
- `2.0.0`
  * skybox
  * light source + dithering
- `3.0.0`
  * raytracing
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
