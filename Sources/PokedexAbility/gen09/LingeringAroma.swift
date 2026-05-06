//
//  LingeringAroma.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let lingeringAroma = LingeringAroma.ability
}

enum LingeringAroma: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "lingering-aroma")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "とれないにおい"
        default:
            "Lingering Aroma"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "直接攻撃を受けた時、相手の特性をとれないにおいにする。"
        case (.ix, _):
            "Contact with the Pokémon changes the attacker's Ability to Lingering Aroma."
        default:
            name(locale: locale)
        }
    }
}
