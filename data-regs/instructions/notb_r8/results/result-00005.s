  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  incb %bl                 #  1     0     2      OPC=incb_r8        
  movsbw %bl, %r11w        #  2     0x2   5      OPC=movsbw_r16_r8  
  negw %r11w               #  3     0x7   4      OPC=negw_r16       
  callq .read_zf_into_rbx  #  4     0xb   5      OPC=callq_label    
  xchgw %r11w, %bx         #  5     0x10  4      OPC=xchgw_r16_r16  
  retq                     #  6     0x14  1      OPC=retq           
                                                                    
.size target, .-target
