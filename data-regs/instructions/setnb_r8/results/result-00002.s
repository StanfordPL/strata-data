  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label      
  popcntw %bx, %r11w       #  2     0x5   6      OPC=popcntw_r16_r16  
  callq .read_zf_into_rbx  #  3     0xb   5      OPC=callq_label      
  retq                     #  4     0x10  1      OPC=retq             
                                                                      
.size target, .-target
