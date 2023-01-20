class Tactics::ElementsController < ApplicationController
  def update
    tactic = Tactic.find(params[:tactic_id])
    tactic.elements.each do |element|
      # byebug
      element.update(x_coordinate: params['elements'][element.id.to_s]['x_coordinate'], y_coordinate: params['elements'][element.id.to_s]['y_coordinate'])
    end
    redirect_to edit_tactic_path(tactic.id)
  end
  # {"elements"=>{"5"=>{"x_coordinate"=>"50", "y_coordinate"=>"50"}, "6"=>{"x_coordinate"=>"50", "y_coordinate"=>"50"}, "7"=>{"x_coordinate"=>"50", "y_coordinate"=>"50"}, "8"=>{"x_coordinate"=>"50", "y_coordinate"=>"50"}}}
  # "element"=>{"name"=>"test", "side"=>"friend", "tactic_id"=>"2"
  # params.require(:users).permit('japan'[name])
end