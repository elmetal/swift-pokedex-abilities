//
//  Levitate.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ふゆう in Japanese.
    ///
    /// The localized name of this ability is `"Levitate"` in English and
    /// `"ふゆう"` in Japanese.
    ///
    /// Use this value when you need to refer to Levitate by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.levitate
    /// ```
    ///
    /// The ability's raw value is `"levitate"`.
    static let levitate = Levitate.ability
}

enum Levitate: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "levitate")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ふゆう"
        default:
            "Levitate"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "じめんタイプの技を受けない。"
        case (.iii ... .ix, _):
            "Ground-type moves have no effect on the Pokémon."
        default:
            name(locale: locale)
        }
    }
}
