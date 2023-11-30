//
//  Encryption.swift
//  Rekrut
//
//  Created by Jakub Chodara on 21/11/2023.
//

import Foundation

func encryptCaesarCipher(_ plaintext: String, shift: Int) -> String {
    let characters = "0123456789"
    
    var encryptedText = ""

    for character in plaintext {
        if let index = characters.firstIndex(of: character) {
            let currentIndex = characters.distance(from: characters.startIndex, to: index)
            let shiftedIndex = (currentIndex + shift) % characters.count
            let shiftedCharacterIndex = characters.index(characters.startIndex, offsetBy: shiftedIndex)
            encryptedText.append(characters[shiftedCharacterIndex])
        } else {
            // If the character is not in the allowed set, leave it unchanged
            encryptedText.append(character)
        }
    }

    return encryptedText
}

func decryptCaesarCipher(_ ciphertext: String, shift: Int) -> String {
    // To decrypt, use a negative shift
    return encryptCaesarCipher(ciphertext, shift: -shift)
}
