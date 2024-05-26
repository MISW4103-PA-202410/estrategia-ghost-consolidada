Feature: Crear Member

    @run @members @data_gen
    Scenario: escenario_1 - Actualizar miembro
        Given inicio la aplicación
        And inicio sesión si es necesario
        And abro la sección de "Members"
        And doy click al primer miembro en la lista
        When reescribo "<name>" como nombre del miembro
        And reescribo email "<email>"
        And guardo el miembro
        Then abro la sección de "Members"
        And el miembro debe existir

        Examples:
        |name| email |
        |escenario_1 - {faker(alphaNumeric)}|{faker(email)}|
        |escenario_1 - {faker(special_characters)}|{faker(email)}|

    @run @members @data_gen
    Scenario: escenario_2 - Crear un miembro con nombre e email
        Given inicio la aplicación
        And inicio sesión si es necesario
        And abro la sección de "Members"
        And doy click en "New member"
        When ingreso "<name>" como nombre del miembro
        And ingreso email "<email>"
        And guardo el miembro
        Then abro la sección de "Members"
        And el miembro debe existir

        Examples:
        |name| email |
        |escenario_2 - {faker(alphaNumeric)}|{faker(email)}|
        |escenario_2 - {faker(alphaNumeric_100)}|{faker(email)}|
        |escenario_2 - {faker(alphaNumeric_150)}|{faker(email)}|

    @run @members @data_gen @debug
    Scenario: escenario_3 - importar miembros
        Given inicio la aplicación
        And inicio sesión si es necesario
        And abro la sección de "Members"
        Then importo miembros de "<name>"

        Examples:
        |name|
        |./assets/members.csv|
        |./assets/members.txt|

