//
//  IceFace.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let iceFace = IceFace.ability
}

enum IceFace: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "ice-face")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "アイスフェイス"
        default:
            "Ice Face"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "アイスフェイスで物理技を1回防ぎ、姿が変わる。あられでアイスフェイスに戻る。"
        case (.viii, _):
            "The ice head blocks one physical attack, then the Pokémon changes form. Hail restores the ice head."
        default:
            name(locale: locale)
        }
    }
}
