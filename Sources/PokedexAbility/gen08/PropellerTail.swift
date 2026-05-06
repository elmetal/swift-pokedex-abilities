//
//  PropellerTail.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let propellerTail = PropellerTail.ability
}

enum PropellerTail: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "propeller-tail")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "スクリューおびれ"
        default:
            "Propeller Tail"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "技を引き寄せる効果を無視して攻撃できる。"
        case (.viii, _):
            "The Pokémon's moves ignore effects that redirect moves."
        default:
            name(locale: locale)
        }
    }
}
