//
//  AsOne.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let asOne = AsOne.ability
}

enum AsOne: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "as-one")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "じんばいったい"
        default:
            "As One"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "きんちょうかんと、しろのいななきまたはくろのいななきの効果をあわせ持つ。"
        case (.viii, _):
            "Combines Unnerve with Chilling Neigh or Grim Neigh."
        default:
            name(locale: locale)
        }
    }
}
