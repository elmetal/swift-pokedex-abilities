//
//  UnseenFist.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ふかしのこぶし in Japanese.
    ///
    /// The localized name of this ability is `"Unseen Fist"` in English and
    /// `"ふかしのこぶし"` in Japanese.
    ///
    /// Use this value when you need to refer to Unseen Fist by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.unseenFist
    /// ```
    ///
    /// The ability's raw value is `"unseen-fist"`.
    static let unseenFist = UnseenFist.ability
}

enum UnseenFist: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "unseen-fist")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ふかしのこぶし"
        default:
            "Unseen Fist"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "直接攻撃の技が相手の守る効果を貫通する。"
        case (.viii, _):
            "Contact moves can hit through protection moves."
        default:
            name(locale: locale)
        }
    }
}
