class Prestashop < ActiveRecord::Base
  @@database = nil
  @@prefix = 'pre_'
  def initialize(database = nil, table_prefix = nil)
    if database != nil
      @@database = database
      spec = self.configurations[RAILS_ENV]
      new_spec = spec.clone
      new_spec['database'] = database
      self.establish_connection new_spec
    end
    @@prefix = table_prefix
  end

  def method_missing(func, *args)
    class_name = ''
    parts = func.to_s.split(/_/)
    parts.each do |p|
      class_name += p.capitalize
    end
    puts class_name
    begin
      klass = Module.const_get(class_name)
      if klass.is_a?(Class) == true
        puts "Found"
      else
        puts "No"
      end
    rescue NameError
      puts "Nil"
      return nil
    end
  end

  class Prestashop::Access < Prestashop
    set_table_name @@prefix+"access"
  end

  class Accessory < Prestashop
    set_table_name @@prefix+"accessory"
  end

  class Address < Prestashop
    set_table_name @@prefix+"address"
  end

  class Alias < Prestashop
    set_table_name @@prefix+"alias"
  end

  class Attachment < Prestashop
    set_table_name @@prefix+"attachment"
  end

  class AttachmentLang < Prestashop
    set_table_name @@prefix+"attachment_lang"
  end

  class Attribute < Prestashop
    set_table_name @@prefix+"attribute"
  end

  class AttributeGroup < Prestashop
    set_table_name @@prefix+"attribute_group"
  end

  class AttributeGroupLang < Prestashop
    set_table_name @@prefix+"attribute_group_lang"
  end

  class AttributeImpact < Prestashop
    set_table_name @@prefix+"attribute_impact"
  end

  class AttributeLang < Prestashop
    set_table_name @@prefix+"attribute_lang"
  end

  class BlockCms < Prestashop
    set_table_name @@prefix+"block_cms"
  end

  class Carrier < Prestashop
    set_table_name @@prefix+"carrier"
  end

  class CarrierGroup < Prestashop
    set_table_name @@prefix+"carrier_group"
  end

  class CarrierLang < Prestashop
    set_table_name @@prefix+"carrier_lang"
  end

  class CarrierZone < Prestashop
    set_table_name @@prefix+"carrier_zone"
  end

  class Cart < Prestashop
    set_table_name @@prefix+"cart"
  end

  class CartDiscount < Prestashop
    set_table_name @@prefix+"cart_discount"
  end

  class CartProduct < Prestashop
    set_table_name @@prefix+"cart_product"
  end

  class Category < Prestashop
    set_table_name @@prefix+"category"
  end

  class CategoryGroup < Prestashop
    set_table_name @@prefix+"category_group"
  end

  class CategoryLang < Prestashop
    set_table_name @@prefix+"category_lang"
  end

  class CategoryProduct < Prestashop
    set_table_name @@prefix+"category_product"
  end

  class Cms < Prestashop
    set_table_name @@prefix+"cms"
  end

  class CmsLang < Prestashop
    set_table_name @@prefix+"cms_lang"
  end

  class Configuration < Prestashop
    set_table_name @@prefix+"configuration"
  end

  class ConfigurationLang < Prestashop
    set_table_name @@prefix+"configuration_lang"
  end

  class Connections < Prestashop
    set_table_name @@prefix+"connections"
  end

  class ConnectionsPage < Prestashop
    set_table_name @@prefix+"connections_page"
  end

  class ConnectionsSource < Prestashop
    set_table_name @@prefix+"connections_source"
  end

  class Contact < Prestashop
    set_table_name @@prefix+"contact"
  end

  class ContactLang < Prestashop
    set_table_name @@prefix+"contact_lang"
  end

  class Country < Prestashop
    set_table_name @@prefix+"country"
  end

  class CountryLang < Prestashop
    set_table_name @@prefix+"country_lang"
  end

  class Currency < Prestashop
    set_table_name @@prefix+"currency"
  end

  class Customer < Prestashop
    set_table_name @@prefix+"customer"
  end

  class CustomerGroup < Prestashop
    set_table_name @@prefix+"customer_group"
  end

  class Customization < Prestashop
    set_table_name @@prefix+"customization"
  end

  class CustomizationField < Prestashop
    set_table_name @@prefix+"customization_field"
  end

  class CustomizationFieldLang < Prestashop
    set_table_name @@prefix+"customization_field_lang"
  end

  class CustomizedData < Prestashop
    set_table_name @@prefix+"customized_data"
  end

  class DateRange < Prestashop
    set_table_name @@prefix+"date_range"
  end

  class Delivery < Prestashop
    set_table_name @@prefix+"delivery"
  end

  class Discount < Prestashop
    set_table_name @@prefix+"discount"
  end

  class DiscountCategory < Prestashop
    set_table_name @@prefix+"discount_category"
  end

  class DiscountLang < Prestashop
    set_table_name @@prefix+"discount_lang"
  end

  class DiscountQuantity < Prestashop
    set_table_name @@prefix+"discount_quantity"
  end

  class DiscountType < Prestashop
    set_table_name @@prefix+"discount_type"
  end

  class DiscountTypeLang < Prestashop
    set_table_name @@prefix+"discount_type_lang"
  end

  class Employee < Prestashop
    set_table_name @@prefix+"employee"
  end

  class Feature < Prestashop
    set_table_name @@prefix+"feature"
  end

  class FeatureLang < Prestashop
    set_table_name @@prefix+"feature_lang"
  end

  class FeatureProduct < Prestashop
    set_table_name @@prefix+"feature_product"
  end

  class FeatureValue < Prestashop
    set_table_name @@prefix+"feature_value"
  end

  class FeatureValueLang < Prestashop
    set_table_name @@prefix+"feature_value_lang"
  end

  class Group < Prestashop
    set_table_name @@prefix+"group"
  end

  class GroupLang < Prestashop
    set_table_name @@prefix+"group_lang"
  end

  class Guest < Prestashop
    set_table_name @@prefix+"guest"
  end

  class Hook < Prestashop
    set_table_name @@prefix+"hook"
  end

  class HookModule < Prestashop
    set_table_name @@prefix+"hook_module"
  end

  class HookModuleExceptions < Prestashop
    set_table_name @@prefix+"hook_module_exceptions"
  end

  class Image < Prestashop
    set_table_name @@prefix+"image"
  end

  class ImageLang < Prestashop
    set_table_name @@prefix+"image_lang"
  end

  class ImageType < Prestashop
    set_table_name @@prefix+"image_type"
  end

  class Lang < Prestashop
    set_table_name @@prefix+"lang"
  end

  class Manufacturer < Prestashop
    set_table_name @@prefix+"manufacturer"
  end

  class ManufacturerLang < Prestashop
    set_table_name @@prefix+"manufacturer_lang"
  end

  class Message < Prestashop
    set_table_name @@prefix+"message"
  end

  class MessageReaded < Prestashop
    set_table_name @@prefix+"message_readed"
  end

  class Meta < Prestashop
    set_table_name @@prefix+"meta"
  end

  class MetaLang < Prestashop
    set_table_name @@prefix+"meta_lang"
  end

  class Module < Prestashop
    set_table_name @@prefix+"module"
  end

  class ModuleCountry < Prestashop
    set_table_name @@prefix+"module_country"
  end

  class ModuleCurrency < Prestashop
    set_table_name @@prefix+"module_currency"
  end

  class ModuleGroup < Prestashop
    set_table_name @@prefix+"module_group"
  end

  class OperatingSystem < Prestashop
    set_table_name @@prefix+"operating_system"
  end

  class OrderDetail < Prestashop
    set_table_name @@prefix+"order_detail"
  end

  class OrderDiscount < Prestashop
    set_table_name @@prefix+"order_discount"
  end

  class OrderHistory < Prestashop
    set_table_name @@prefix+"order_history"
  end

  class OrderMessage < Prestashop
    set_table_name @@prefix+"order_message"
  end

  class OrderMessageLang < Prestashop
    set_table_name @@prefix+"order_message_lang"
  end

  class OrderReturn < Prestashop
    set_table_name @@prefix+"order_return"
  end

  class OrderReturnDetail < Prestashop
    set_table_name @@prefix+"order_return_detail"
  end

  class OrderReturnState < Prestashop
    set_table_name @@prefix+"order_return_state"
  end

  class OrderReturnStateLang < Prestashop
    set_table_name @@prefix+"order_return_state_lang"
  end

  class OrderSlip < Prestashop
    set_table_name @@prefix+"order_slip"
  end

  class OrderSlipDetail < Prestashop
    set_table_name @@prefix+"order_slip_detail"
  end

  class OrderState < Prestashop
    set_table_name @@prefix+"order_state"
  end

  class OrderStateLang < Prestashop
    set_table_name @@prefix+"order_state_lang"
  end

  class Orders < Prestashop
    set_table_name @@prefix+"orders"
  end

  class Pack < Prestashop
    set_table_name @@prefix+"pack"
  end

  class Page < Prestashop
    set_table_name @@prefix+"page"
  end

  class PageType < Prestashop
    set_table_name @@prefix+"page_type"
  end

  class PageViewed < Prestashop
    set_table_name @@prefix+"page_viewed"
  end

  class Pagenotfound < Prestashop
    set_table_name @@prefix+"pagenotfound"
  end

  class Product < Prestashop
    set_table_name @@prefix+"product"
  end

  class ProductAttachment < Prestashop
    set_table_name @@prefix+"product_attachment"
  end

  class ProductAttribute < Prestashop
    set_table_name @@prefix+"product_attribute"
  end

  class ProductAttributeCombination < Prestashop
    set_table_name @@prefix+"product_attribute_combination"
  end

  class ProductAttributeImage < Prestashop
    set_table_name @@prefix+"product_attribute_image"
  end

  class ProductDownload < Prestashop
    set_table_name @@prefix+"product_download"
  end

  class ProductLang < Prestashop
    set_table_name @@prefix+"product_lang"
  end

  class ProductSale < Prestashop
    set_table_name @@prefix+"product_sale"
  end

  class ProductTag < Prestashop
    set_table_name @@prefix+"product_tag"
  end

  class Profile < Prestashop
    set_table_name @@prefix+"profile"
  end

  class ProfileLang < Prestashop
    set_table_name @@prefix+"profile_lang"
  end

  class QuickAccess < Prestashop
    set_table_name @@prefix+"quick_access"
  end

  class QuickAccessLang < Prestashop
    set_table_name @@prefix+"quick_access_lang"
  end

  class RangePrice < Prestashop
    set_table_name @@prefix+"range_price"
  end

  class RangeWeight < Prestashop
    set_table_name @@prefix+"range_weight"
  end

  class Referrer < Prestashop
    set_table_name @@prefix+"referrer"
  end

  class ReferrerCache < Prestashop
    set_table_name @@prefix+"referrer_cache"
  end

  class Scene < Prestashop
    set_table_name @@prefix+"scene"
  end

  class SceneCategory < Prestashop
    set_table_name @@prefix+"scene_category"
  end

  class SceneLang < Prestashop
    set_table_name @@prefix+"scene_lang"
  end

  class SceneProducts < Prestashop
    set_table_name @@prefix+"scene_products"
  end

  class SearchEngine < Prestashop
    set_table_name @@prefix+"search_engine"
  end

  class SearchIndex < Prestashop
    set_table_name @@prefix+"search_index"
  end

  class SearchWord < Prestashop
    set_table_name @@prefix+"search_word"
  end

  class Sekeyword < Prestashop
    set_table_name @@prefix+"sekeyword"
  end

  class State < Prestashop
    set_table_name @@prefix+"state"
  end

  class Statssearch < Prestashop
    set_table_name @@prefix+"statssearch"
  end

  class Subdomain < Prestashop
    set_table_name @@prefix+"subdomain"
  end

  class Supplier < Prestashop
    set_table_name @@prefix+"supplier"
  end

  class SupplierLang < Prestashop
    set_table_name @@prefix+"supplier_lang"
  end

  class Tab < Prestashop
    set_table_name @@prefix+"tab"
  end

  class TabLang < Prestashop
    set_table_name @@prefix+"tab_lang"
  end

  class Tag < Prestashop
    set_table_name @@prefix+"tag"
  end

  class Tax < Prestashop
    set_table_name @@prefix+"tax"
  end

  class TaxLang < Prestashop
    set_table_name @@prefix+"tax_lang"
  end

  class TaxState < Prestashop
    set_table_name @@prefix+"tax_state"
  end

  class TaxZone < Prestashop
    set_table_name @@prefix+"tax_zone"
  end

  class Timezone < Prestashop
    set_table_name @@prefix+"timezone"
  end

  class WebBrowser < Prestashop
    set_table_name @@prefix+"web_browser"
  end

  class Zone < Prestashop
    set_table_name @@prefix+"zone"
  end
end
