//
//  Disguise.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ばけのかわ in Japanese.
    ///
    /// The localized name of this ability is `"Disguise"` in English and
    /// `"ばけのかわ"` in Japanese.
    ///
    /// Use this value when you need to refer to Disguise by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.disguise
    /// ```
    ///
    /// The ability's raw value is `"disguise"`.
    static let disguise = Disguise.ability
}

enum Disguise: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "disguise")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ばけのかわ"
        default:
            "Disguise"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii ... .ix, .japanese):
            "1回の戦闘で一度だけ攻撃技のダメージを防ぎ、姿が変わる。"
        case (.vii ... .ix, _):
            "Once per battle, the Pokémon avoids damage from an attack and changes form."
        default:
            name(locale: locale)
        }
    }
}
