sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"my/spacefarer/spacefarersui/spacefarersui/test/integration/pages/SpacefarerList",
	"my/spacefarer/spacefarersui/spacefarersui/test/integration/pages/SpacefarerObjectPage"
], function (JourneyRunner, SpacefarerList, SpacefarerObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('my/spacefarer/spacefarersui/spacefarersui') + '/test/flp.html#app-preview',
        pages: {
			onTheSpacefarerList: SpacefarerList,
			onTheSpacefarerObjectPage: SpacefarerObjectPage
        },
        async: true
    });

    return runner;
});

