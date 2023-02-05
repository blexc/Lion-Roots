/// @desc ?

for (var i = 0; i < 4; i++)
{
	if (global.collected[i])
	{
		draw_sprite(tree_sprites[i], 0, x, y);
	}
}