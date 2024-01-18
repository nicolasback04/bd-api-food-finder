--Sec tabla usuarios
ALTER TABLE public.usuarios
ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_seq'::regclass);

--Sec tabla restaurantes
ALTER TABLE public.restaurantes
ALTER COLUMN id_restaurante SET DEFAULT nextval('public.restaurant_seq'::regclass);

--Sec tabla categoria menu
ALTER TABLE public.categoria_menu
ALTER COLUMN id_categoria SET DEFAULT nextval('public.menuCategory_seq'::regclass);

--Sec tabla detalle restaurante
ALTER TABLE public.detalle_restaurante
ALTER COLUMN id_detalle SET DEFAULT nextval('public.restaurantDetail_seq'::regclass);

--Sec tabla categoria restaurante
ALTER TABLE public.detalle_restaurante
ALTER COLUMN id_categoria SET DEFAULT nextval('public.restaurantcategory_seq'::regclass);

--Sec tabla imagenes menu
ALTER TABLE public.imagenes_menu
ALTER COLUMN id_imagen SET DEFAULT nextval('public.menuimagenes_seq'::regclass);