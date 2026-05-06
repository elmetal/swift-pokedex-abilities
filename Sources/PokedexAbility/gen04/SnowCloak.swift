//
//  SnowCloak.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let snowCloak = SnowCloak.ability
}

enum SnowCloak: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "snow-cloak")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ゆきがくれ"
        default:
            "Snow Cloak"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "あられの時、回避率が1.25倍になり、あられのダメージを受けない。"
        case (.iv, _):
            "During hail, evasion is 1.25x and hail damage is prevented."
        default:
            name(locale: locale)
        }
    }
}
