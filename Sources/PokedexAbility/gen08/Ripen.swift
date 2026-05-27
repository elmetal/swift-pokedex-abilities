//
//  Ripen.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as じゅくせい in Japanese.
    ///
    /// The localized name of this ability is `"Ripen"` in English and
    /// `"じゅくせい"` in Japanese.
    ///
    /// Use this value when you need to refer to Ripen by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.ripen
    /// ```
    ///
    /// The ability's raw value is `"ripen"`.
    static let ripen = Ripen.ability
}

enum Ripen: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "ripen")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "じゅくせい"
        default:
            "Ripen"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii ... .ix, .japanese):
            "きのみの効果が2倍になる。"
        case (.viii ... .ix, _):
            "The effects of Berries are doubled."
        default:
            name(locale: locale)
        }
    }
}
