//
//  FriendGuard.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as フレンドガード in Japanese.
    ///
    /// The localized name of this ability is `"Friend Guard"` in English and
    /// `"フレンドガード"` in Japanese.
    ///
    /// Use this value when you need to refer to Friend Guard by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.friendGuard
    /// ```
    ///
    /// The ability's raw value is `"friend-guard"`.
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
        case (.v ... .ix, .japanese):
            "味方が攻撃技で受けるダメージが0.75倍になる。"
        case (.v ... .ix, _):
            "Allies take 0.75x damage from attacks."
        default:
            name(locale: locale)
        }
    }
}
