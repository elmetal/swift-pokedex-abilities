//
//  SheerForce.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ちからずく in Japanese.
    ///
    /// The localized name of this ability is `"Sheer Force"` in English and
    /// `"ちからずく"` in Japanese.
    ///
    /// Use this value when you need to refer to Sheer Force by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.sheerForce
    /// ```
    ///
    /// The ability's raw value is `"sheer-force"`.
    static let sheerForce = SheerForce.ability
}

enum SheerForce: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "sheer-force")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ちからずく"
        default:
            "Sheer Force"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v ... .ix, .japanese):
            "追加効果がある技の威力が1.3倍になるが、追加効果は発生しない。"
        case (.v ... .ix, _):
            "Moves with additional effects have 1.3x power, but their additional effects are removed."
        default:
            name(locale: locale)
        }
    }
}
