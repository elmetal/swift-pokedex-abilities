//
//  GuardDog.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ばんけん in Japanese.
    ///
    /// The localized name of this ability is `"Guard Dog"` in English and
    /// `"ばんけん"` in Japanese.
    ///
    /// Use this value when you need to refer to Guard Dog by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.guardDog
    /// ```
    ///
    /// The ability's raw value is `"guard-dog"`.
    static let guardDog = GuardDog.ability
}

enum GuardDog: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "guard-dog")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ばんけん"
        default:
            "Guard Dog"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "いかくを受けるとこうげきが上がり、強制的に交代させられない。"
        case (.ix, _):
            "Intimidate raises Attack instead of lowering it, and the Pokémon cannot be forced to switch out."
        default:
            name(locale: locale)
        }
    }
}
