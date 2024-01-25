/// @description Insert description here
// You can write your code in this editor
if (global.upgrading && global.in_upgrade) {
    for (var _i = 1; _i <= 4; _i++) {
        var _x_pos = 250 * _i;
        var _obj = instance_create_depth(_x_pos, 48, -100, obj_upgradecard);
        show_debug_message("criou " + string(_i));
    }

    // Marque que o processo de upgrade foi concluído
    global.in_upgrade = false;
}
