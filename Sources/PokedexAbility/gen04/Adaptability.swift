//
//  Adaptability.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let adaptability = Adaptability.ability
}

enum Adaptability: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "adaptability")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "てきおうりょく"
        default:
            "Adaptability"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "タイプ一致の攻撃技の威力補正が1.5倍から2倍になる。"
        case (.iv, _):
            "Same-type attack bonus becomes 2x instead of 1.5x."
        default:
            name(locale: locale)
        }
    }
}
