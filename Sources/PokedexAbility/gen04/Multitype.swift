//
//  Multitype.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let multitype = Multitype.ability
}

enum Multitype: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "multitype")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "マルチタイプ"
        default:
            "Multitype"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "持っているプレートに応じてタイプが変わる。"
        case (.iv, _):
            "The Pokémon's type changes according to the Plate it holds."
        default:
            name(locale: locale)
        }
    }
}
