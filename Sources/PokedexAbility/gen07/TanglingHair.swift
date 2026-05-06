//
//  TanglingHair.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let tanglingHair = TanglingHair.ability
}

enum TanglingHair: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "tangling-hair")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "カーリーヘアー"
        default:
            "Tangling Hair"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "直接攻撃を受けた時、相手のすばやさを1段階下げる。"
        case (.vii, _):
            "Contact with the Pokémon lowers the attacker's Speed by one stage."
        default:
            name(locale: locale)
        }
    }
}
