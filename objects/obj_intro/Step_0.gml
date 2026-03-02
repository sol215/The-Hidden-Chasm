// Dacă nu am terminat de scris tot textul
if (caracter_index < string_length(text_complet)) {
    // Creștem indexul
    caracter_index += viteza_scriere;
    // Actualizăm textul vizibil
    text_curent = string_copy(text_complet, 1, floor(caracter_index));
}

// Opțional: Dacă apeși SPACE, mergi la următoarea cameră (după ce textul e gata)
if (keyboard_check_pressed(vk_space)) {
    if (caracter_index < string_length(text_complet)) {
        caracter_index = string_length(text_complet); // Sari direct la finalul textului
    } else {
        room_goto_next(); // Mergi la jocul propriu-zis
    }
}