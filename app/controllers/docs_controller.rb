class DocsController < ApplicationController

	before_action :find_doc, only: [:show, :edit, :update, :destroy]

	def index
		@docs = Doc.all.order("created_at DESC")
	end

	def show
	end

	def new
		@doc = Doc.new
	end

	def edit
	end

	def create
		@doc = Doc.new(doc_params)

		if @doc.save
			redirect_to @doc
		else
			render 'new'
		end
	end

	def update
	end

	def destroy
	end

	private

		def doc_params
			params.require(:doc).permit(:title, :content)
		end

		def find_doc
			@doc = Doc.find(params[:id])
		end
end
