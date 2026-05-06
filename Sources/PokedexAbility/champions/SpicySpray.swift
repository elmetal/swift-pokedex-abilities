//
//  SpicySpray.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as とびだすハバネロ in Japanese.
    ///
    /// The localized name of this ability is `"Spicy Spray"` in English and
    /// `"とびだすハバネロ"` in Japanese.
    ///
    /// Use this value when you need to refer to Spicy Spray by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.spicySpray
    /// ```
    ///
    /// The ability's raw value is `"spicy-spray"`.
    static let spicySpray = SpicySpray.ability
}

enum SpicySpray: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "spicy-spray")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "とびだすハバネロ"
        default:
            "Spicy Spray"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.champions, .japanese):
            "技でダメージを受けた時、相手をやけど状態にする。"
        case (.champions, _):
            "When the Pokémon takes damage from a move, it burns the attacker."
        default:
            name(locale: locale)
        }
    }
}
