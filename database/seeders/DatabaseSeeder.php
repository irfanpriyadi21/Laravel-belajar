<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\post;
use App\Models\Category;
use App\Models\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        User::create([
            'name' => 'Irfan Priyadi Nurfauzi',
            'email' => 'irfan@gmail.com',
            'password' => bcrypt('1234')
        ]);

        User::create([
            'name' => 'Doddy Cahyadi',
            'email' => 'doddsky@gmail.com',
            'password' => bcrypt('1234')
        ]);

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'personal',
            'slug' => 'personal'
        ]);

        post::create([
            'title' => 'Judul Pertama',
            'slug' => 'judul-pertama',
            'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero dolore nisi ipsum atque dolorem obcaecati nam esse eum corporis et deserunt maiore',
            'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero dolore nisi ipsum atque dolorem obcaecati nam esse eum corporis et deserunt maiores deleniti, odit veniam hic nobis exercitationem recusandae dolor sint vero vitae pariatur sequi adipisci sit.</p><p>Nesciunt non qui perspiciatis error similique harum doloremque, vero perferendis laudantium, nulla iste, voluptatibus placeat! Rem a quisquam libero id repellendus nulla suscipit inventore laudantium similique eos doloribus earum dicta aspernatur accusantium totam, quam sint.</p><p>Maxime possimus vel nulla ea, earum est, quos provident recusandae error fuga ipsa dolore nobis tenetur ullam doloribus deleniti delectus quasi ducimus aperiam nisi? Voluptatibus, hic! Deserunt, tenetur?</p>',
            'category_id' => 1,
            'user_id' => 1
        ]);
        
        post::create([
            'title' => 'Judul Kedua',
            'slug' => 'judul-kedua',
            'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero dolore nisi ipsum atque dolorem obcaecati nam esse eum corporis et deserunt maiore',
            'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero dolore nisi ipsum atque dolorem obcaecati nam esse eum corporis et deserunt maiores deleniti, odit veniam hic nobis exercitationem recusandae dolor sint vero vitae pariatur sequi adipisci sit.</p><p>Nesciunt non qui perspiciatis error similique harum doloremque, vero perferendis laudantium, nulla iste, voluptatibus placeat! Rem a quisquam libero id repellendus nulla suscipit inventore laudantium similique eos doloribus earum dicta aspernatur accusantium totam, quam sint.</p><p>Maxime possimus vel nulla ea, earum est, quos provident recusandae error fuga ipsa dolore nobis tenetur ullam doloribus deleniti delectus quasi ducimus aperiam nisi? Voluptatibus, hic! Deserunt, tenetur?</p>',
            'category_id' => 1,
            'user_id' => 1
        ]);

        post::create([
            'title' => 'Judul Ketiga',
            'slug' => 'judul-ketiga',
            'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero dolore nisi ipsum atque dolorem obcaecati nam esse eum corporis et deserunt maiore',
            'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero dolore nisi ipsum atque dolorem obcaecati nam esse eum corporis et deserunt maiores deleniti, odit veniam hic nobis exercitationem recusandae dolor sint vero vitae pariatur sequi adipisci sit.</p><p>Nesciunt non qui perspiciatis error similique harum doloremque, vero perferendis laudantium, nulla iste, voluptatibus placeat! Rem a quisquam libero id repellendus nulla suscipit inventore laudantium similique eos doloribus earum dicta aspernatur accusantium totam, quam sint.</p><p>Maxime possimus vel nulla ea, earum est, quos provident recusandae error fuga ipsa dolore nobis tenetur ullam doloribus deleniti delectus quasi ducimus aperiam nisi? Voluptatibus, hic! Deserunt, tenetur?</p>',
            'category_id' => 2,
            'user_id' => 2
        ]);

        post::create([
            'title' => 'Judul Keempat',
            'slug' => 'judul-keempat',
            'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero dolore nisi ipsum atque dolorem obcaecati nam esse eum corporis et deserunt maiore',
            'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero dolore nisi ipsum atque dolorem obcaecati nam esse eum corporis et deserunt maiores deleniti, odit veniam hic nobis exercitationem recusandae dolor sint vero vitae pariatur sequi adipisci sit.</p><p>Nesciunt non qui perspiciatis error similique harum doloremque, vero perferendis laudantium, nulla iste, voluptatibus placeat! Rem a quisquam libero id repellendus nulla suscipit inventore laudantium similique eos doloribus earum dicta aspernatur accusantium totam, quam sint.</p><p>Maxime possimus vel nulla ea, earum est, quos provident recusandae error fuga ipsa dolore nobis tenetur ullam doloribus deleniti delectus quasi ducimus aperiam nisi? Voluptatibus, hic! Deserunt, tenetur?</p>',
            'category_id' => 2,
            'user_id' => 2
        ]);
    }


}
