//
//  WaterBubble.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let waterBubble = WaterBubble.ability
}

enum WaterBubble: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "water-bubble")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "すいほう"
        default:
            "Water Bubble"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "ほのおタイプの技で受けるダメージが半分になり、やけどにならず、みずタイプの技の威力が2倍になる。"
        case (.vii, _):
            "Fire-type damage is halved, burn is prevented, and Water-type moves have 2x power."
        default:
            name(locale: locale)
        }
    }
}
