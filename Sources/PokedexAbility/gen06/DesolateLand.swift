//
//  DesolateLand.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as おわりのだいち in Japanese.
    ///
    /// The localized name of this ability is `"Desolate Land"` in English and
    /// `"おわりのだいち"` in Japanese.
    ///
    /// Use this value when you need to refer to Desolate Land by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.desolateLand
    /// ```
    ///
    /// The ability's raw value is `"desolate-land"`.
    static let desolateLand = DesolateLand.ability
}

enum DesolateLand: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "desolate-land")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "おわりのだいち"
        default:
            "Desolate Land"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi ... .ix, .japanese):
            "みずタイプの攻撃技を無効化する強い晴れにする。"
        case (.vi ... .ix, _):
            "Creates extremely harsh sunlight that nullifies Water-type attacks."
        default:
            name(locale: locale)
        }
    }
}
