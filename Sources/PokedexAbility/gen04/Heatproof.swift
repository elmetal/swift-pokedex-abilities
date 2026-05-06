//
//  Heatproof.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let heatproof = Heatproof.ability
}

enum Heatproof: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "heatproof")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "たいねつ"
        default:
            "Heatproof"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "ほのおタイプの技で受けるダメージと、やけどのダメージが半分になる。"
        case (.iv, _):
            "Damage from Fire-type moves and burn damage are halved."
        default:
            name(locale: locale)
        }
    }
}
