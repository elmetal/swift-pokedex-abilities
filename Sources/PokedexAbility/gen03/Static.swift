//
//  Static.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let `static` = Static.ability
    static let staticAbility = Static.ability
}

enum Static: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "static")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "せいでんき"
        default:
            "Static"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "直接攻撃を受けた時、30%の確率で相手をまひ状態にする。"
        case (.iii, _):
            "Contact with the Pokémon has a 30% chance to paralyze the attacker."
        default:
            name(locale: locale)
        }
    }
}
