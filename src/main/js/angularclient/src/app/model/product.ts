import { Author } from '../model/author';
import { Genre } from '../model/genre';

export class Product {

    product_id: number;
    title: string;
    shortDescription: string;
    longDescription: string;
    price: number;
    availableQuantity: bigint;
    establishmentDate: Date;
    genres : Genre[] = [];
    authors : Author[] = [];
}
