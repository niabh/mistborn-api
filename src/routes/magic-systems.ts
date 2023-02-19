import { Router } from "express";

const router = Router();

// Magic Systems
router.post("/", (req, res) => {});

router.get("/:id", (req, res) => {});

router.post("/", (req, res) => {});

router.put("/:id", (req, res) => {});

router.delete("/:id", (req, res) => {});

// Metals
router.post("/metals", (req, res) => {});

router.get("/metals/:id", (req, res) => {});

router.post("/metals", (req, res) => {});

router.put("/metals/:id", (req, res) => {});

router.delete("/metals/:id", (req, res) => {});

export const MagicSystemsRouter: Router = router;
