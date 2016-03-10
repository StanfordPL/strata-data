  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r8_r9     #  1     0     5      OPC=callq_label        
  vzeroall                           #  2     0x5   3      OPC=vzeroall           
  vmovq %r8, %xmm9                   #  3     0x8   5      OPC=vmovq_xmm_r64      
  vorpd %ymm9, %ymm12, %ymm8         #  4     0xd   5      OPC=vorpd_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  5     0x12  5      OPC=callq_label        
  retq                               #  6     0x17  1      OPC=retq               
                                                                                  
.size target, .-target
