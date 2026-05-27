//
//  Steadfast.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ふくつのこころ in Japanese.
    ///
    /// The localized name of this ability is `"Steadfast"` in English and
    /// `"ふくつのこころ"` in Japanese.
    ///
    /// Use this value when you need to refer to Steadfast by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.steadfast
    /// ```
    ///
    /// The ability's raw value is `"steadfast"`.
    static let steadfast = Steadfast.ability
}

enum Steadfast: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "steadfast")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ふくつのこころ"
        default:
            "Steadfast"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "ひるむと、すばやさが1段階上がる。"
        case (.iv ... .ix, _):
            "When the Pokémon flinches, Speed rises by one stage."
        default:
            name(locale: locale)
        }
    }
}
