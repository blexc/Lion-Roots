function sec2frame(_sec)
{
	return _sec * room_speed;
}

function approach(_current, _target, _delta)
{
	if (_current < _target)
	{
		_current += _delta;
		if (_current > _target) return _target;
	}
	else
	{
		_current -= _delta;
		if (_current < _target) return _target;
	}
	
	return _current;
}

function set_draw(_color, _alpha, _font, _valign, _halign)
{
	if (0) return argument[0];
	if (_color != undefined)	draw_set_color(_color);
	if (_alpha != undefined)	draw_set_alpha(_alpha);
	if (_font != undefined)		draw_set_font(_font);
	if (_valign != undefined)	draw_set_valign(_valign);
	if (_halign != undefined)	draw_set_halign(_halign);
}

function normalize(_n, _min, _max)
{
	while (_n < _min)
		_n += _max - _min;
	while (_n >= _max)
		_n -= _max - _min;
	return _n;
}

// wrap x-coord around to stay within tower boundary
function normalizex(_x)
{
	return normalize(_x, 0, obj_tower.w);
}

// wrap column around to stay within tower boundary
function normalize_column(_col)
{
	return normalize(_col, 0, obj_tower.cols);
}

// Utility Methods
function x2col(_x)   { return floor(normalizex(_x) / COL_WIDTH);    } // convert x-coord to tower column index
function y2row(_y)   { return floor(_y / ROW_HEIGHT);               } // convert y-coord to tower row    index
function col2x(_col) { return _col * COL_WIDTH;                     } // convert tower column index to x-coord
function row2y(_row) { return _row * ROW_HEIGHT;                    } // convert tower row    index to y-coord
function x2a(_x)     { return 360 * (normalizex(_x) / obj_tower.w); } // convert x-coord to an angle around the tower

// Transforming Coordinates
function tx(_x, _r)
{
	return _r * sin((normalizex(_x - CAM_X) / obj_tower.w) * 2 * pi);
}

function ty(_y)
{
	return HEIGHT - HORIZON - (_y - CAM_Y);
}

function render_quad(_min, _max, _dir)
{
	with (obj_tower)
	{
		var _y, _cell, _row, _col = _min;
		while (_col != _max)
		{
			for(_row = 0; _row < rows ; _row++)
			{
				_y = ty(_row * ROW_HEIGHT);
				var _cell = map[_row, _col];
				var _cell_inst = map_inst[_row, _col];
				if (_cell == L_PLATFORM)
				{
					if (_cell_inst == noone)
					{
						_cell_inst = instance_create_layer(0, _y, "Tower", obj_platform);
					}
					map_inst[_row, _col] = render_platform(_cell_inst, _col, _y);
				}
			}
		}
		_col = normalize_column(_col + _dir);
	}
}

function render_platform(_inst, _col, _y)
{
	with (_inst)
	{
		var _x  = col2x(_col + 0.5);			// center of the column
		var _x0 = tx(_x, obj_tower.outer_r);	// transformed center
		var _x1 = _x0 - sprite_width / 2;		// left edge

		x = _x1;
		return id;
	}
}
