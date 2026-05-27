//
//  Chlorophyll.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ようりょくそ in Japanese.
    ///
    /// The localized name of this ability is `"Chlorophyll"` in English and
    /// `"ようりょくそ"` in Japanese.
    ///
    /// Use this value when you need to refer to Chlorophyll by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.chlorophyll
    /// ```
    ///
    /// The ability's raw value is `"chlorophyll"`.
    static let chlorophyll = Chlorophyll.ability
}

enum Chlorophyll: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "chlorophyll")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ようりょくそ"
        default:
            "Chlorophyll"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "晴れの時、すばやさが2倍になる。"
        case (.iii ... .ix, _):
            "During harsh sunlight, Speed is doubled."
        default:
            name(locale: locale)
        }
    }
}
