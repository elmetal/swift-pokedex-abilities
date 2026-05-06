//
//  Disguise.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let disguise = Disguise.ability
}

enum Disguise: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "disguise")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ばけのかわ"
        default:
            "Disguise"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "1回の戦闘で一度だけ攻撃技のダメージを防ぎ、姿が変わる。"
        case (.vii, _):
            "Once per battle, the Pokémon avoids damage from an attack and changes form."
        default:
            name(locale: locale)
        }
    }
}
