//
//  Ripen.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let ripen = Ripen.ability
}

enum Ripen: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "ripen")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "じゅくせい"
        default:
            "Ripen"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "きのみの効果が2倍になる。"
        case (.viii, _):
            "The effects of Berries are doubled."
        default:
            name(locale: locale)
        }
    }
}
