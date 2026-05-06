//
//  DrySkin.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let drySkin = DrySkin.ability
}

enum DrySkin: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "dry-skin")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "かんそうはだ"
        default:
            "Dry Skin"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "みずタイプの技で最大HPの1/4回復し、ほのおタイプの技で受けるダメージが1.25倍になる。雨で回復し、晴れでダメージを受ける。"
        case (.iv, _):
            "Water-type moves heal 1/4 maximum HP, Fire-type damage is 1.25x, rain restores HP, and harsh sunlight damages the Pokémon."
        default:
            name(locale: locale)
        }
    }
}
