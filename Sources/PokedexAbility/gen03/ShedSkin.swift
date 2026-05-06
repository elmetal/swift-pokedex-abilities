//
//  ShedSkin.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let shedSkin = ShedSkin.ability
}

enum ShedSkin: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "shed-skin")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "だっぴ"
        default:
            "Shed Skin"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "毎ターン終了時、1/3の確率で状態異常が治る。"
        case (.iii, _):
            "At the end of each turn, there is a 1/3 chance to heal a status condition."
        default:
            name(locale: locale)
        }
    }
}
