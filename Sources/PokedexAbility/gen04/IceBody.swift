//
//  IceBody.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as アイスボディ in Japanese.
    ///
    /// The localized name of this ability is `"Ice Body"` in English and
    /// `"アイスボディ"` in Japanese.
    ///
    /// Use this value when you need to refer to Ice Body by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.iceBody
    /// ```
    ///
    /// The ability's raw value is `"ice-body"`.
    static let iceBody = IceBody.ability
}

enum IceBody: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "ice-body")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "アイスボディ"
        default:
            "Ice Body"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "あられの時、毎ターン終了時に最大HPの1/16回復する。"
        case (.iv ... .ix, _):
            "During hail, 1/16 of maximum HP is restored at the end of each turn."
        default:
            name(locale: locale)
        }
    }
}
