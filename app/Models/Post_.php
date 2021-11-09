<?php

namespace App\Models;



class Post{
   private static $blog_post =  [
        [
            "title" => "Asal Saja yang Penting jalan",
            "slug" => 'asal-saja-yang-penting-jalan',
            "author" => "Bambang Ksatria Maya",
            "body" => "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Cupiditate voluptates, consectetur ab, fugit aliquam eum vel ut fuga eius natus possimus quaerat dolorum! Cupiditate optio itaque nesciunt. Cumque unde beatae corporis recusandae consequuntur, a soluta sit nobis voluptatibus quo ad, nulla quos? Reprehenderit sit ex dicta laudantium et facere natus illo ipsam, totam possimus fugit atque qui est, repellat porro dignissimos corrupti fugiat dolor enim magni? Quas in doloremque culpa, alias quo at architecto fugiat unde sit dignissimos eveniet ipsa."
        ],
        [
            "title" => "Asal Saja yang Penting Hidup",
            'slug' => 'asal-saja-yang-penting-hidup',
            "author" => "Bambang Ksatria Maya Pusaka",
            "body" => "Lorem, tai ipsum dolor sit amet consectetur adipisicing elit. Cupiditate voluptates, consectetur ab, fugit aliquam eum vel ut fuga eius natus possimus quaerat dolorum! Cupiditate optio itaque nesciunt. Cumque unde beatae corporis recusandae consequuntur, a soluta sit nobis voluptatibus quo ad, nulla quos? Reprehenderit sit ex dicta laudantium et facere natus illo ipsam, totam possimus fugit atque qui est, repellat porro dignissimos corrupti fugiat dolor enim magni? Quas in doloremque culpa, alias quo at architecto fugiat unde sit dignissimos eveniet ipsa."
        ]
    ];

    public static function all(){
        return collect(self:: $blog_post);
    }

    public static function find($slug){
        
        $post = static:: all();
        // $arry = [];
        // foreach($post as $data){
        //     if($data['slug'] == $slug){
        //         $arry = $data;
        //     }
        // }

        return $post->firstWhere('slug', $slug);
    }
}
