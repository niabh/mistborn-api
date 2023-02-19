import express from "express";
import router from "./routes/routes";

const app = express();

// MORE info:
// https://stackoverflow.com/questions/23259168/what-are-express-json-and-express-urlencoded
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use("/rest", router);

export default app;
