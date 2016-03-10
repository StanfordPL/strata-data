  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode             
.target:                            #        0    0      OPC=<label>        
  xorl %ebx, %ebx                   #  1     0    2      OPC=xorl_r32_r32   
  callq .move_128_064_xmm1_r10_r11  #  2     0x2  5      OPC=callq_label    
  xchgw %r10w, %bx                  #  3     0x7  4      OPC=xchgw_r16_r16  
  retq                              #  4     0xb  1      OPC=retq           
                                                                            
.size target, .-target
