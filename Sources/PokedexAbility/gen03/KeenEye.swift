//
//  KeenEye.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as するどいめ in Japanese.
    ///
    /// The localized name of this ability is `"Keen Eye"` in English and
    /// `"するどいめ"` in Japanese.
    ///
    /// Use this value when you need to refer to Keen Eye by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.keenEye
    /// ```
    ///
    /// The ability's raw value is `"keen-eye"`.
    static let keenEye = KeenEye.ability
}

enum KeenEye: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "keen-eye")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "するどいめ"
        default:
            "Keen Eye"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "相手に命中率を下げられない。"
        case (.iii, _):
            "Prevents other Pokémon from lowering the Pokémon's accuracy."
        default:
            name(locale: locale)
        }
    }
}
