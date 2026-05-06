//
//  CloudNine.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ノーてんき in Japanese.
    ///
    /// The localized name of this ability is `"Cloud Nine"` in English and
    /// `"ノーてんき"` in Japanese.
    ///
    /// Use this value when you need to refer to Cloud Nine by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.cloudNine
    /// ```
    ///
    /// The ability's raw value is `"cloud-nine"`.
    static let cloudNine = CloudNine.ability
}

enum CloudNine: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "cloud-nine")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ノーてんき"
        default:
            "Cloud Nine"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "場にいる間、天気の効果をなくす。"
        case (.iii, _):
            "All effects of weather are negated while the Pokémon is in battle."
        default:
            name(locale: locale)
        }
    }
}
