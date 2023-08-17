# language: es
@Booking_001
Característica: Booking funcionabilidad de Servicio de alojamiento

  Antecedentes:
    Entonces valido el ingreso correcto a la aplicacion

  @Booking_002
  Escenario: Validar reserva de alojamiento exitoso
    Entonces ingreso los datos de busqueda
      | Destino | FechaInicio    | FechaFin       | Ninnos |
      | Cuzco   | 24 agosto 2023 | 31 agosto 2023 | 5      |
    E realizo la busqueda
    Entonces selecciono la segunda opcion
    Cuando ingreso los datos del usuario
      | Nombre   | Apellido | Email                         | Direccion  | CodigoPostal | Ciudad | Pais | Telefono  |
      | Vladimir | Vilca    | vladimirvilcacortez@gmail.com | Montevideo | 11112        | Ica    | Perú | 990278770 |
    Dado ingreso datos de la tarjeta
      | Numero           | Titular        | FechaC | CodigoCVV |
      | 4557880476007434 | Vladimir Vilca | 06/26  | 139       |
    E pulso sobre Reserva Ahora
    Cuando valido la reserva confirmada

  @Booking_003
  Escenario: Validar reserva de alojamiento exitoso ingresando otros datos del usuario
    Entonces ingreso los datos de busqueda
      | Destino | FechaInicio    | FechaFin       | Ninnos |
      | Cuzco   | 24 agosto 2023 | 31 agosto 2023 | 5      |
    E realizo la busqueda
    Entonces selecciono la segunda opcion
    Cuando ingreso los datos del usuario
      | Nombre   | Apellido | Email                | Direccion  | CodigoPostal | Ciudad | Pais | Telefono  |
      | Fernando | Cortez   | vladimir@yopmail.com | Montevideo | 11112        | Ica    | Perú | 956151523 |
    Dado ingreso datos de la tarjeta
      | Numero           | Titular        | FechaC | CodigoCVV |
      | 4557880476007434 | Vladimir Vilca | 06/26  | 139       |
    E pulso sobre Reserva Ahora
    Cuando valido la reserva confirmada

  @Booking_004
  Escenario: Validar reserva de alojamiento fallido sin ingresar telefono
    Entonces ingreso los datos de busqueda
      | Destino | FechaInicio    | FechaFin       | Ninnos |
      | Cuzco   | 24 agosto 2023 | 31 agosto 2023 | 5      |
    E realizo la busqueda
    Entonces selecciono la segunda opcion
    Cuando ingreso los datos del usuario
      | Nombre   | Apellido | Email                | Direccion  | CodigoPostal | Ciudad | Pais | Telefono |
      | Fernando | Cortez   | vladimir@yopmail.com | Montevideo | 11112        | Ica    | Perú |          |
    Dado ingreso datos de la tarjeta
      | Numero           | Titular        | FechaC | CodigoCVV |
      | 4557880476007434 | Vladimir Vilca | 06/26  | 139       |
    E pulso sobre Reserva Ahora
    Cuando valido la reserva confirmada

  @Booking_005
  Escenario: Validar reserva de alojamiento fallido sin ingresar el Pais
    Entonces ingreso los datos de busqueda
      | Destino | FechaInicio    | FechaFin       | Ninnos |
      | Cuzco   | 24 agosto 2023 | 31 agosto 2023 | 5      |
    E realizo la busqueda
    Entonces selecciono la segunda opcion
    Cuando ingreso los datos del usuario
      | Nombre   | Apellido | Email                | Direccion  | CodigoPostal | Ciudad | Pais | Telefono  |
      | Fernando | Cortez   | vladimir@yopmail.com | Montevideo | 11112        | Ica    |      | 956151523 |
    Dado ingreso datos de la tarjeta
      | Numero           | Titular        | FechaC | CodigoCVV |
      | 4557880476007434 | Vladimir Vilca | 06/26  | 139       |
    E pulso sobre Reserva Ahora
    Cuando valido la reserva confirmada
