import * as _ from "lodash";
import * as path from "path";

export const APP_PORT = _.defaultTo(parseInt(process.env.APP_PORT || ""), 3000);
export const ENVIRONMENT = _.defaultTo(process.env.APP_ENV, "dev");
export const LOG_DIRECTORY = _.defaultTo(
  process.env.LOG_DIRECTORY,
  path.resolve("logs")
);
