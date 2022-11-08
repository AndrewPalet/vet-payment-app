import Pet from "./pet"
import Visit from "./visit"

export default interface User {
    id: string,
    name: string,
    email: string,
    password: string,
    visits: Visit[],
    pets: Pet[],
}