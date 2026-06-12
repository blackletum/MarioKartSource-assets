#if defined _mks_included
 #endinput
#endif
#define _mks_included

/**
 * Do not edit below this line!
 */
public Extension:__ext_sample = 
{
	name = "Sample",
	file = "sample.ext",
#if defined AUTOLOAD_EXTENSIONS
	autoload = 1,
#else
	autoload = 0,
#endif
#if defined REQUIRE_EXTENSIONS
	required = 1,
#else
	required = 0,
#endif
};


/**
 * Forwards the spawn function.
 *
 * @param client Client running function.
 * @return	none.
 */
native PlayerSpawn( client );