//
//  Justified.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as せいぎのこころ in Japanese.
    ///
    /// The localized name of this ability is `"Justified"` in English and
    /// `"せいぎのこころ"` in Japanese.
    ///
    /// Use this value when you need to refer to Justified by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.justified
    /// ```
    ///
    /// The ability's raw value is `"justified"`.
    static let justified = Justified.ability
}

enum Justified: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "justified")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "せいぎのこころ"
        default:
            "Justified"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "あくタイプの技を受けた時、こうげきが1段階上がる。"
        case (.v, _):
            "When hit by a Dark-type move, Attack rises by one stage."
        default:
            name(locale: locale)
        }
    }
}
