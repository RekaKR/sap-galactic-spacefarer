const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
  const {Spacefarer} = this.entities;

  this.before('CREATE', Spacefarer, (req) => {
    const {stardustCollection, wormholeNavigation} = req.data;

    if (stardustCollection == null || stardustCollection < 0) {
        req.error(400, "Stardust collection must be a positive number!");
    }

    if (wormholeNavigation == null || wormholeNavigation < 0) {
        req.error(400, "Wormhole navigation must be a positive number!");
    }
  })

  this.after('CREATE', Spacefarer, (newSpacefarer, req) => {
    const planetName = newSpacefarer.originPlanet || "Unknown planet";
    //const color = newSpacefarer.spacesuitColor || "Unknown color";

    req.info(`Welcome Spacefarer from ${planetName}!\nYour adventure among the stars begins now. Congratulations on starting your adventurous journey among the stars!`);
  })
})