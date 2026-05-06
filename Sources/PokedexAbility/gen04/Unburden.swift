//
//  Unburden.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let unburden = Unburden.ability
}

enum Unburden: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "unburden")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "かるわざ"
        default:
            "Unburden"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "持っていた道具がなくなると、すばやさが2倍になる。"
        case (.iv, _):
            "After the Pokémon loses or uses its held item, Speed is doubled."
        default:
            name(locale: locale)
        }
    }
}
