//
//  Comatose.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ぜったいねむり in Japanese.
    ///
    /// The localized name of this ability is `"Comatose"` in English and
    /// `"ぜったいねむり"` in Japanese.
    ///
    /// Use this value when you need to refer to Comatose by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.comatose
    /// ```
    ///
    /// The ability's raw value is `"comatose"`.
    static let comatose = Comatose.ability
}

enum Comatose: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "comatose")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ぜったいねむり"
        default:
            "Comatose"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "常にねむり状態として扱われるが、ねむりによる行動不能にはならない。"
        case (.vii, _):
            "The Pokémon is always treated as asleep without being affected by sleep's restrictions."
        default:
            name(locale: locale)
        }
    }
}
