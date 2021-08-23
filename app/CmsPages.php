<?php
namespace App;
use Illuminate\Database\Eloquent\Model;

class CmsPages extends Model{

    protected $table = 'cms_pages';

    protected $guarded = ['id'];

    protected $fillable = [];

    public function children(){
        return $this->hasMany('App\CmsPages', 'parent_id');
    }

    public function cmsInsights(){
        return $this->belongsToMany('App\BlogCategory', 'cms_insights', 'cms_page_id')->withPivot('is_main');
    }

    public function cmsCaseStudy(){
        return $this->belongsToMany('App\CasestudyCategory', 'cms_case_study', 'cms_page_id')->withPivot('is_main');
    }

}