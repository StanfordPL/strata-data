  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_128_064_xmm1_r10_r11  #  1     0     5      OPC=callq_label      
  popcntw %r10w, %ax                #  2     0x5   6      OPC=popcntw_r16_r16  
  callq .read_zf_into_rbx           #  3     0xb   5      OPC=callq_label      
  xchgl %ebx, %r11d                 #  4     0x10  3      OPC=xchgl_r32_r32    
  retq                              #  5     0x13  1      OPC=retq             
                                                                               
.size target, .-target
