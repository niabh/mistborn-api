import { Router } from "express";

const router = Router();

router.get("/", (_, res) => {
  res.send("Servidor operativo!");
});

export default router;
