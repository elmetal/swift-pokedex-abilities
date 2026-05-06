//
//  IceScales.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let iceScales = IceScales.ability
}

enum IceScales: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "ice-scales")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "こおりのりんぷん"
        default:
            "Ice Scales"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "特殊技で受けるダメージが半分になる。"
        case (.viii, _):
            "Damage from special moves is halved."
        default:
            name(locale: locale)
        }
    }
}
