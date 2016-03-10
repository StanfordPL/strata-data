  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  movzwq %cx, %r11         #  1     0     4      OPC=movzwq_r64_r16   
  callq .read_cf_into_rcx  #  2     0x4   5      OPC=callq_label      
  popcntw %cx, %si         #  3     0x9   5      OPC=popcntw_r16_r16  
  cmovnew %r11w, %bx       #  4     0xe   5      OPC=cmovnew_r16_r16  
  retq                     #  5     0x13  1      OPC=retq             
                                                                      
.size target, .-target
