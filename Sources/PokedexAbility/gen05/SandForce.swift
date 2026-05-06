//
//  SandForce.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let sandForce = SandForce.ability
}

enum SandForce: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "sand-force")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "すなのちから"
        default:
            "Sand Force"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "すなあらしの時、いわ・じめん・はがねタイプの技の威力が1.3倍になり、すなあらしのダメージを受けない。"
        case (.v, _):
            "During a sandstorm, Rock-, Ground-, and Steel-type moves have 1.3x power, and sandstorm damage is prevented."
        default:
            name(locale: locale)
        }
    }
}
