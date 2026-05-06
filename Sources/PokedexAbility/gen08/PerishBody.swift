//
//  PerishBody.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let perishBody = PerishBody.ability
}

enum PerishBody: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "perish-body")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ほろびのボディ"
        default:
            "Perish Body"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "直接攻撃を受けると、お互いに3ターン後にひんしになる。交代すると解除される。"
        case (.viii, _):
            "When hit by a contact move, both Pokémon faint after three turns unless they switch out."
        default:
            name(locale: locale)
        }
    }
}
