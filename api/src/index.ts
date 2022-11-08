import * as dotenv from "dotenv";
import express from "express";
import cors from "cors";
import helmet from "helmet";
import fs from "fs";
import User from "./models/user";
import Visit from "./models/visit";

// Load environment variables from .env file, where API keys and passwords are configured
dotenv.config();

// Check for required environment variables
if (!process.env.PORT) {
  console.log("PORT", process.env.PORT);
  process.exit(1);
}

// Parse port from environment variables, i.e. convert string to number
const PORT: number = parseInt(process.env.PORT as string, 10);

// Create Express server
const app = express();

// Express configuration
app.use(helmet());
app.use(cors());
app.use(express.json());

// Start Express server
app.listen(PORT, () => {
  console.log(`Listening on port ${PORT}`);
});

/*
  Function to read in JSON file
*/
function jsonReader(filePath: string, cb: any) {
  fs.readFile(filePath, "utf-8", (err, fileData) => {
    if (err) {
      return cb && cb(err);
    }
    try {
      const object = JSON.parse(fileData);
      return cb && cb(null, object);
    } catch (err) {
      return cb && cb(err);
    }
  });
}

/*
  Method: GET
  Parameters: User Email
  Returns: An array of visits related to a user
*/
app.get("/api/user/:email", (req, res) => {
  const email = req.params.email;
  try {
    jsonReader("./users.json", (err: any, data: User[]) => {
      if (err) {
        res.status(404).send(err);
      } else {
        data.forEach((user) => {
          if(user.email == email) {
            const visitsArray = user.visits as Visit[];
            res.status(200).send(visitsArray); 
          }
        });
      }
    });
  } catch (err) {
    res.status(404).send(err);
  }
});

/*
  Method: PATCH
  Parameters: Visit ID
  Returns: The updated resource or an error
*/
app.patch("/api/visitid/:visitid", (req, res) => {
  const visitId = parseInt(req.params.visitid);
  let visitArray = [] as Visit[];
  let updatedVisit = {} as Visit;
  let responseVisitArray = {} as Visit[];

  try{
    jsonReader('./users.json', (err:any, data: User[]) => {
      if(err) {
        res.status(404).send(err);
      } else {
          data.forEach((user) => {
            visitArray = user.visits;
            let index = user.visits.findIndex(x => x.id == visitId);
            if(index != -1) {
              user.visits[index].paid = true;
              responseVisitArray = user.visits;
              updatedVisit = user.visits[index];
            }
          });
        fs.writeFile('./users.json', JSON.stringify(data, null, 2), err => {
          if(err) {
            res.status(400).send("Could not wrtie to file");
          } else {
            res.status(200).send(responseVisitArray);
          }
        })
      }
    });
  } catch (err) {
    res.status(500).send(err);
  }
});