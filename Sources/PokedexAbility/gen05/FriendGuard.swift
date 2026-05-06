//
//  FriendGuard.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let friendGuard = FriendGuard.ability
}

enum FriendGuard: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "friend-guard")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "フレンドガード"
        default:
            "Friend Guard"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "味方が攻撃技で受けるダメージが0.75倍になる。"
        case (.v, _):
            "Allies take 0.75x damage from attacks."
        default:
            name(locale: locale)
        }
    }
}
