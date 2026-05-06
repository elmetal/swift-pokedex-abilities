//
//  PastelVeil.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as パステルベール in Japanese.
    ///
    /// The localized name of this ability is `"Pastel Veil"` in English and
    /// `"パステルベール"` in Japanese.
    ///
    /// Use this value when you need to refer to Pastel Veil by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.pastelVeil
    /// ```
    ///
    /// The ability's raw value is `"pastel-veil"`.
    static let pastelVeil = PastelVeil.ability
}

enum PastelVeil: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "pastel-veil")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "パステルベール"
        default:
            "Pastel Veil"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "自分と味方はどく・もうどく状態にならない。"
        case (.viii, _):
            "The Pokémon and its allies cannot be poisoned."
        default:
            name(locale: locale)
        }
    }
}
