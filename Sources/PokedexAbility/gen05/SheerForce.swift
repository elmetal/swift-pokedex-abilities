//
//  SheerForce.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
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
        case (.v, .japanese):
            "追加効果がある技の威力が1.3倍になるが、追加効果は発生しない。"
        case (.v, _):
            "Moves with additional effects have 1.3x power, but their additional effects are removed."
        default:
            name(locale: locale)
        }
    }
}
