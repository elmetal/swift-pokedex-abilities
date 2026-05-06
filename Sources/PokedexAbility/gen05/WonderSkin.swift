//
//  WonderSkin.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let wonderSkin = WonderSkin.ability
}

enum WonderSkin: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "wonder-skin")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ミラクルスキン"
        default:
            "Wonder Skin"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "自分に使われる変化技の命中率が50%になる。"
        case (.v, _):
            "Status moves used against the Pokémon have 50% accuracy."
        default:
            name(locale: locale)
        }
    }
}
