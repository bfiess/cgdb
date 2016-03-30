class Glaze < ActiveRecord::Base
	belongs_to :surface
	belongs_to :atmosphere
	belongs_to :opacity
	belongs_to :clay
	belongs_to :user
	has_many :ingredients, dependent: :destroy
	has_many :materials, through: :ingredients
	accepts_nested_attributes_for :ingredients, reject_if: lambda { |a| a[:amt].blank? }, :allow_destroy => true
	

	before_save :set_umf
	
	def set_umf
		
		totalamt = 0.0
		
		k2o_total = 0.0
		na2o_total = 0.0
		li2o_total = 0.0
		cao_total = 0.0
		mgo_total = 0.0
		bao_total = 0.0
		sro_total = 0.0
		zno_total = 0.0
		pbo_total = 0.0
		feo_total = 0.0
		cuo_total = 0.0
		coo_total = 0.0
		nio_total = 0.0
		
		al2o3_total = 0.0
		b2o3_total = 0.0
		fe2o3_total = 0.0
		p2o5_total = 0.0
		sb2o3_total = 0.0
		cr2o3_total = 0.0
		v2o5_total = 0.0
		
		sio2_total = 0.0
		tio2_total = 0.0
		zro2_total = 0.0
		sno2_total = 0.0
		mno2_total = 0.0
		
		for ingredient in self.ingredients
			if ingredient.material.colorant == false
				totalamt += ingredient.amt
			end
		end
		
		for ingredient in self.ingredients
			constant = (ingredient.amt/totalamt*100)/ingredient.material.eweight

			k2o_total = k2o_total + (constant * ingredient.material.k2o)
			na2o_total += constant * ingredient.material.na2o
			li2o_total += constant * ingredient.material.li2o
			cao_total += constant * ingredient.material.cao
			mgo_total += constant * ingredient.material.mgo
			bao_total += constant * ingredient.material.bao
			sro_total += constant * ingredient.material.sro
			zno_total += constant * ingredient.material.zno
			pbo_total += constant * ingredient.material.pbo
			feo_total += constant * ingredient.material.feo
			cuo_total += constant * ingredient.material.cuo
			coo_total += constant * ingredient.material.coo
			nio_total += constant * ingredient.material.nio
			
			al2o3_total += constant * ingredient.material.al2o3
			b2o3_total += constant * ingredient.material.b2o3
			fe2o3_total += constant * ingredient.material.fe2o3
			p2o5_total += constant * ingredient.material.p2o5
			sb2o3_total += constant * ingredient.material.sb2o3
			cr2o3_total += constant * ingredient.material.cr2o3
			v2o5_total += constant * ingredient.material.v2o5
			
			sio2_total += constant * ingredient.material.sio2
			tio2_total += constant * ingredient.material.tio2
			zro2_total += constant * ingredient.material.zro2
			sno2_total += constant * ingredient.material.sno2
			mno2_total += constant * ingredient.material.mno2
			
		end
		
		unifier = k2o_total + na2o_total + li2o_total + cao_total + mgo_total + bao_total + sro_total + zno_total + pbo_total + feo_total + cuo_total + coo_total + nio_total
		
		self.k2o = k2o_total/unifier
		self.na2o = na2o_total/unifier
		self.li2o = li2o_total/unifier
		self.cao = cao_total/unifier
		self.mgo = mgo_total/unifier
		self.bao = bao_total/unifier
		self.sro = sro_total/unifier
		self.zno = zno_total/unifier
		self.pbo = pbo_total/unifier
		self.feo = feo_total/unifier
		self.cuo = cuo_total/unifier
		self.coo = coo_total/unifier
		self.nio = nio_total/unifier
		
		self.al2o3 = al2o3_total/unifier
		self.b2o3 = b2o3_total/unifier
		self.fe2o3 = fe2o3_total/unifier
		self.p2o5 = p2o5_total/unifier
		self.sb2o3 = sb2o3_total/unifier
		self.cr2o3 = cr2o3_total/unifier
		self.v2o5 = v2o5_total/unifier
		
		self.sio2 = sio2_total/unifier
		self.tio2 = tio2_total/unifier
		self.zro2 = zro2_total/unifier
		self.sno2 = sno2_total/unifier
		self.mno2 = mno2_total/unifier
	
	end
	
	
end
