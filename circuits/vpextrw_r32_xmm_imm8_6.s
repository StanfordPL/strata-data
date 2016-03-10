  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label        
  punpckhdq %xmm13, %xmm1              #  2     0x5   5      OPC=punpckhdq_xmm_xmm  
  callq .move_128_064_xmm1_r10_r11     #  3     0xa   5      OPC=callq_label        
  movzwl %r11w, %ebx                   #  4     0xf   4      OPC=movzwl_r32_r16     
  retq                                 #  5     0x13  1      OPC=retq               
                                                                                    
.size target, .-target
