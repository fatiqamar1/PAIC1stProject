extends CharacterBody2D

# خيارات تقدري تغيريها من الواجهة بدون ما تدخلي الكود
@export var speed = 100.0        # السرعة
@export var distance = 200.0     # المسافة (كم بكسل تمشي)
@export var horizontal = true    # لو صح (يمين ويسار)، لو خطأ (فوق وتحت)

var start_pos
var direction = 1

func _ready():
 # يحفظ مكان المنصة أول ما تبدأ اللعبة
 start_pos = position

func _physics_process(delta):
 if horizontal:
  # حركة أفقية
  position.x += speed * direction * delta
  if abs(position.x - start_pos.x) >= distance:
   direction *= -1 # اعكس الاتجاه
 else:
  # حركة عمودية
  position.y += speed * direction * delta
  if abs(position.y - start_pos.y) >= distance:
   direction *= -1
