// Setări aspect text
draw_set_color(c_white); // Text alb
draw_set_halign(fa_left); // Aliniat la stânga
draw_set_valign(fa_top);  // Începe de sus

// Desenăm textul cu auto-aranjare pe rânduri
// 50, 50 sunt coordonatele X și Y pe ecran
// 30 este distanța între rânduri
// room_width - 100 este lățimea maximă (lasă margini de 50px)
draw_text_ext(50, 50, text_curent, 30, room_width - 100);