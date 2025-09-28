const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
  const {Spacefarer, Positions} = this.entities;

  this.before(['CREATE', 'UPDATE'], Spacefarer, async (req) => {
    const {stardustCollection, wormholeNavigation, department_ID, position_ID} = req.data;

    if (stardustCollection == null || stardustCollection < 0) {
        req.error(400, "Stardust collection must be a positive number!");
    }

    if (wormholeNavigation == null || wormholeNavigation < 0) {
        req.error(400, "Wormhole navigation must be a positive number!");
    }

    if (department_ID && position_ID) {
      const position = await SELECT.one.from(Positions).where({ID: position_ID});
      if (position && position.department_ID !== department_ID) {
        req.reject(400, `The ${position.title} doesn't belong to the selected department! Please select a position that matches the chosen department.`);
      }
    }
  })

  this.after('CREATE', Spacefarer, (newSpacefarer, req) => {
    const planetName = newSpacefarer.originPlanet || "Unknown planet";

    req.info(`Welcome Spacefarer from ${planetName}!\nYour adventure among the stars begins now. Congratulations on starting your adventurous journey among the stars!`);
  })
})