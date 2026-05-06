//
//  Analytic.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as アナライズ in Japanese.
    ///
    /// The localized name of this ability is `"Analytic"` in English and
    /// `"アナライズ"` in Japanese.
    ///
    /// Use this value when you need to refer to Analytic by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.analytic
    /// ```
    ///
    /// The ability's raw value is `"analytic"`.
    static let analytic = Analytic.ability
}

enum Analytic: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "analytic")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "アナライズ"
        default:
            "Analytic"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "自分が相手より後に行動する時、技の威力が1.3倍になる。"
        case (.v, _):
            "If the Pokémon moves after its target, its move has 1.3x power."
        default:
            name(locale: locale)
        }
    }
}
