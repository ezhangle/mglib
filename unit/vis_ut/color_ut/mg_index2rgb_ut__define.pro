function mg_index2rgb_ut::test_black
  compile_opt strictarr

  assert, array_equal(mg_index2rgb('000000'x), [0B, 0B, 0B], /no_typeconv), $
          'incorrect value for black'

  return, 1
end


function mg_index2rgb_ut::init, _extra=e
  compile_opt strictarr

  if (~self->MGutLibTestCase::init(_extra=e)) then return, 0

  self->addTestingRoutine, 'mg_index2rgb', /is_function

  return, 1
end


pro mg_index2rgb_ut__define
  compile_opt strictarr

  define = { mg_index2rgb_ut, inherits MGutLibTestCase }
end
