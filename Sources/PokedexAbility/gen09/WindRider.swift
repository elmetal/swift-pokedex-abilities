//
//  WindRider.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let windRider = WindRider.ability
}

enum WindRider: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "wind-rider")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "かぜのり"
        default:
            "Wind Rider"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "風の技を受けるとダメージを受けずこうげきが1段階上がる。おいかぜでもこうげきが上がる。"
        case (.ix, _):
            "Wind moves deal no damage and raise Attack by one stage. Tailwind also raises Attack."
        default:
            name(locale: locale)
        }
    }
}
