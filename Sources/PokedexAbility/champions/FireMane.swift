//
//  FireMane.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ほのおのたてがみ in Japanese.
    ///
    /// The localized name of this ability is `"Fire Mane"` in English and
    /// `"ほのおのたてがみ"` in Japanese.
    ///
    /// Use this value when you need to refer to Fire Mane by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.fireMane
    /// ```
    ///
    /// The ability's raw value is `"fire-mane"`.
    static let fireMane = FireMane.ability
}

enum FireMane: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "fire-mane")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ほのおのたてがみ"
        default:
            "Fire Mane"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.champions, .japanese):
            "ほのおタイプの技の威力が1.5倍になる。"
        case (.champions, _):
            "Boosts the power of the Pokémon's Fire-type moves by 50%."
        default:
            name(locale: locale)
        }
    }
}
