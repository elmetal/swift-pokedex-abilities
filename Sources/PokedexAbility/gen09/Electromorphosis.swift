//
//  Electromorphosis.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let electromorphosis = Electromorphosis.ability
}

enum Electromorphosis: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "electromorphosis")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "でんきにかえる"
        default:
            "Electromorphosis"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "攻撃を受けると、充電状態になる。"
        case (.ix, _):
            "When hit by an attack, the Pokémon becomes charged."
        default:
            name(locale: locale)
        }
    }
}
