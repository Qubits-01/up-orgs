enum OnlineTimeSourceEnum {
  // TODO: Add test on this enum.

  // The source property is based on their real product names (in terms
  // of their capitalization, spacing, and punctuation).
  timeApi('TimeAPI'),
  timeZoneDb('timezonedb'),
  worldTimeApi('WorldTimeAPI'),
  semiOnline('Semi Online'),
  clientTime('Client Time');

  const OnlineTimeSourceEnum(this.source);
  final String source;
}
