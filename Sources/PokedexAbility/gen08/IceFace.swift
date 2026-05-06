//
//  IceFace.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as アイスフェイス in Japanese.
    ///
    /// The localized name of this ability is `"Ice Face"` in English and
    /// `"アイスフェイス"` in Japanese.
    ///
    /// Use this value when you need to refer to Ice Face by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.iceFace
    /// ```
    ///
    /// The ability's raw value is `"ice-face"`.
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
