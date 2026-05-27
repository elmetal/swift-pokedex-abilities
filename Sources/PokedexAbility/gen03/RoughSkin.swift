//
//  RoughSkin.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as さめはだ in Japanese.
    ///
    /// The localized name of this ability is `"Rough Skin"` in English and
    /// `"さめはだ"` in Japanese.
    ///
    /// Use this value when you need to refer to Rough Skin by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.roughSkin
    /// ```
    ///
    /// The ability's raw value is `"rough-skin"`.
    static let roughSkin = RoughSkin.ability
}

enum RoughSkin: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "rough-skin")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "さめはだ"
        default:
            "Rough Skin"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "直接攻撃を受けた時、相手に相手の最大HPの1/16のダメージを与える。"
        case (.iii ... .ix, _):
            "Contact with the Pokémon damages the attacker by 1/16 of its maximum HP."
        default:
            name(locale: locale)
        }
    }
}
