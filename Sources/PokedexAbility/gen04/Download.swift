//
//  Download.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ダウンロード in Japanese.
    ///
    /// The localized name of this ability is `"Download"` in English and
    /// `"ダウンロード"` in Japanese.
    ///
    /// Use this value when you need to refer to Download by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.download
    /// ```
    ///
    /// The ability's raw value is `"download"`.
    static let download = Download.ability
}

enum Download: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "download")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ダウンロード"
        default:
            "Download"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "登場した時、相手の低い防御能力に応じてこうげきかとくこうが1段階上がる。"
        case (.iv ... .ix, _):
            "When the Pokémon enters battle, Attack or Special Attack rises by one stage based on the foe's lower defensive stat."
        default:
            name(locale: locale)
        }
    }
}
