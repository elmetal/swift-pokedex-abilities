//
//  Dancer.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let dancer = Dancer.ability
}

enum Dancer: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "dancer")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "おどりこ"
        default:
            "Dancer"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "他のポケモンが踊りの技を使うと、続けて同じ技を出す。"
        case (.vii, _):
            "When another Pokémon uses a dance move, the Pokémon immediately copies it."
        default:
            name(locale: locale)
        }
    }
}
