//
//  ShedSkin.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as だっぴ in Japanese.
    ///
    /// The localized name of this ability is `"Shed Skin"` in English and
    /// `"だっぴ"` in Japanese.
    ///
    /// Use this value when you need to refer to Shed Skin by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.shedSkin
    /// ```
    ///
    /// The ability's raw value is `"shed-skin"`.
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
        case (.iii ... .ix, .japanese):
            "毎ターン終了時、1/3の確率で状態異常が治る。"
        case (.iii ... .ix, _):
            "At the end of each turn, there is a 1/3 chance to heal a status condition."
        default:
            name(locale: locale)
        }
    }
}
