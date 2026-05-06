//
//  IntrepidSword.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ふとうのけん in Japanese.
    ///
    /// The localized name of this ability is `"Intrepid Sword"` in English and
    /// `"ふとうのけん"` in Japanese.
    ///
    /// Use this value when you need to refer to Intrepid Sword by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.intrepidSword
    /// ```
    ///
    /// The ability's raw value is `"intrepid-sword"`.
    static let intrepidSword = IntrepidSword.ability
}

enum IntrepidSword: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "intrepid-sword")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ふとうのけん"
        default:
            "Intrepid Sword"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "登場した時、こうげきが1段階上がる。"
        case (.viii, _):
            "When the Pokémon enters battle, Attack rises by one stage."
        default:
            name(locale: locale)
        }
    }
}
