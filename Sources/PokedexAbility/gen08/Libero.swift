//
//  Libero.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let libero = Libero.ability
}

enum Libero: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "libero")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "リベロ"
        default:
            "Libero"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "技を使う前に、自分のタイプがその技と同じタイプになる。"
        case (.viii, _):
            "Before the Pokémon uses a move, it changes to that move's type."
        default:
            name(locale: locale)
        }
    }
}
