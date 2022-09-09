_gun = _this select 0;

while { alive _gun } do
{
	waitUntil
	{
		(count magazinesAmmo _gun == 0)
	};
};


