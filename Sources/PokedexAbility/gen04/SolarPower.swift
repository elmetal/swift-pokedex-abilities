//
//  SolarPower.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as サンパワー in Japanese.
    ///
    /// The localized name of this ability is `"Solar Power"` in English and
    /// `"サンパワー"` in Japanese.
    ///
    /// Use this value when you need to refer to Solar Power by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.solarPower
    /// ```
    ///
    /// The ability's raw value is `"solar-power"`.
    static let solarPower = SolarPower.ability
}

enum SolarPower: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "solar-power")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "サンパワー"
        default:
            "Solar Power"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "晴れの時、とくこうが1.5倍になり、毎ターン最大HPの1/8のダメージを受ける。"
        case (.iv ... .ix, _):
            "During harsh sunlight, Special Attack is 1.5x and the Pokémon loses 1/8 of maximum HP each turn."
        default:
            name(locale: locale)
        }
    }
}
