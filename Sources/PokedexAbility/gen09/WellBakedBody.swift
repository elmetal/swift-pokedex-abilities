//
//  WellBakedBody.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let wellBakedBody = WellBakedBody.ability
}

enum WellBakedBody: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "well-baked-body")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "こんがりボディ"
        default:
            "Well-Baked Body"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "ほのおタイプの技を受けると、ダメージを受けずぼうぎょが2段階上がる。"
        case (.ix, _):
            "Fire-type moves deal no damage and raise Defense by two stages."
        default:
            name(locale: locale)
        }
    }
}
