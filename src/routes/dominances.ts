import { Router } from "express";

const router = Router();

// Dominances.
router.post("/", (req, res) => {});

router.get("/:id", (req, res) => {});

router.post("/", (req, res) => {});

router.put("/:id", (req, res) => {});

router.delete("/:id", (req, res) => {});

// Ashmounts.
router.post("/ashmounts", (req, res) => {});

router.get("/ashmounts/:id", (req, res) => {});

router.post("/ashmounts", (req, res) => {});

router.put("/ashmounts/:id", (req, res) => {});

router.delete("/ashmounts/:id", (req, res) => {});

// Water Bodies.
router.post("/water-bodies", (req, res) => {});

router.get("/water-bodies/:id", (req, res) => {});

router.post("/water-bodies", (req, res) => {});

router.put("/water-bodies/:id", (req, res) => {});

router.delete("/water-bodies/:id", (req, res) => {});

export const DominancesRouter: Router = router;
