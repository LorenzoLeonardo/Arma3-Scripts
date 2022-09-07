
waitUntil {
	_myNearestEnemy = player findNearestEnemy player;
	!(isNull _myNearestEnemy)
};

(leader (group player)) sideRadio "RadioEnemySpotted";