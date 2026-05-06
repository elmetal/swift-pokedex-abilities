//
//  Hydration.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let hydration = Hydration.ability
}

enum Hydration: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "hydration")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "うるおいボディ"
        default:
            "Hydration"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "雨の時、毎ターン終了時に状態異常が治る。"
        case (.iv, _):
            "At the end of each turn during rain, status conditions are healed."
        default:
            name(locale: locale)
        }
    }
}
