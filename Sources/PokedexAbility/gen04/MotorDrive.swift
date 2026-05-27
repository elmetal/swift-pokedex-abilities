//
//  MotorDrive.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as でんきエンジン in Japanese.
    ///
    /// The localized name of this ability is `"Motor Drive"` in English and
    /// `"でんきエンジン"` in Japanese.
    ///
    /// Use this value when you need to refer to Motor Drive by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.motorDrive
    /// ```
    ///
    /// The ability's raw value is `"motor-drive"`.
    static let motorDrive = MotorDrive.ability
}

enum MotorDrive: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "motor-drive")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "でんきエンジン"
        default:
            "Motor Drive"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "でんきタイプの技を受けると、ダメージを受けずすばやさが1段階上がる。"
        case (.iv ... .ix, _):
            "Electric-type moves deal no damage and raise Speed by one stage."
        default:
            name(locale: locale)
        }
    }
}
