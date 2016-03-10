  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r10_r11   #  1     0     5      OPC=callq_label        
  vzeroall                           #  2     0x5   3      OPC=vzeroall           
  cvtsd2sil %xmm0, %r11d             #  3     0x8   5      OPC=cvtsd2sil_r32_xmm  
  callq .move_064_128_r10_r11_xmm3   #  4     0xd   5      OPC=callq_label        
  callq .move_128_64_xmm3_xmm8_xmm9  #  5     0x12  5      OPC=callq_label        
  vmovq %rbx, %xmm9                  #  6     0x17  5      OPC=vmovq_xmm_r64      
  callq .move_64_128_xmm8_xmm9_xmm1  #  7     0x1c  5      OPC=callq_label        
  retq                               #  8     0x21  1      OPC=retq               
                                                                                  
.size target, .-target
