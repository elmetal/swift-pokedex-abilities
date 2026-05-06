//
//  Gooey.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let gooey = Gooey.ability
}

enum Gooey: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "gooey")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ぬめぬめ"
        default:
            "Gooey"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "直接攻撃を受けた時、相手のすばやさを1段階下げる。"
        case (.vi, _):
            "Contact with the Pokémon lowers the attacker's Speed by one stage."
        default:
            name(locale: locale)
        }
    }
}
