//
//  Soundproof.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ぼうおん in Japanese.
    ///
    /// The localized name of this ability is `"Soundproof"` in English and
    /// `"ぼうおん"` in Japanese.
    ///
    /// Use this value when you need to refer to Soundproof by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.soundproof
    /// ```
    ///
    /// The ability's raw value is `"soundproof"`.
    static let soundproof = Soundproof.ability
}

enum Soundproof: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "soundproof")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ぼうおん"
        default:
            "Soundproof"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "音に関係する技を受けない。"
        case (.iii ... .ix, _):
            "Sound-based moves have no effect on the Pokémon."
        default:
            name(locale: locale)
        }
    }
}
