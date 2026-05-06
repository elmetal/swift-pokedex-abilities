//
//  MirrorArmor.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ミラーアーマー in Japanese.
    ///
    /// The localized name of this ability is `"Mirror Armor"` in English and
    /// `"ミラーアーマー"` in Japanese.
    ///
    /// Use this value when you need to refer to Mirror Armor by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.mirrorArmor
    /// ```
    ///
    /// The ability's raw value is `"mirror-armor"`.
    static let mirrorArmor = MirrorArmor.ability
}

enum MirrorArmor: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "mirror-armor")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ミラーアーマー"
        default:
            "Mirror Armor"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "相手から受けた能力を下げる効果を跳ね返す。"
        case (.viii, _):
            "Stat-lowering effects from other Pokémon are reflected back."
        default:
            name(locale: locale)
        }
    }
}
