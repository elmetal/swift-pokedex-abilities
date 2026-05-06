//
//  Symbiosis.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let symbiosis = Symbiosis.ability
}

enum Symbiosis: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "symbiosis")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "きょうせい"
        default:
            "Symbiosis"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "味方が道具を使うと、自分の持っている道具を渡す。"
        case (.vi, _):
            "When an ally consumes its held item, the Pokémon gives that ally its held item."
        default:
            name(locale: locale)
        }
    }
}
