//
//  Damp.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as しめりけ in Japanese.
    ///
    /// The localized name of this ability is `"Damp"` in English and
    /// `"しめりけ"` in Japanese.
    ///
    /// Use this value when you need to refer to Damp by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.damp
    /// ```
    ///
    /// The ability's raw value is `"damp"`.
    static let damp = Damp.ability
}

enum Damp: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "damp")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "しめりけ"
        default:
            "Damp"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "じばく・だいばくはつを使えなくする。"
        case (.iii, _):
            "Prevents Self-Destruct and Explosion from being used."
        default:
            name(locale: locale)
        }
    }
}
