import { Router } from "express";
import { BooksRouter } from "./books";
import { CharactersRouter } from "./characters";
import { DominancesRouter } from "./dominances";
import { MagicSystemsRouter } from "./magic-systems";
import { QuotesRouter } from "./quotes";
import { RacesRouter } from "./races";

const router: Router = Router();

router.use("/books", BooksRouter);
router.use("/characters", CharactersRouter);
router.use("/dominances", DominancesRouter);
router.use("/magic-systems", MagicSystemsRouter);
router.use("/quotes", QuotesRouter);
router.use("/races", RacesRouter);

export const MainRouter: Router = router;
