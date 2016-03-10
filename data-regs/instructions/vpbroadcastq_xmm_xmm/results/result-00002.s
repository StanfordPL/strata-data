  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r10_r11     #  1     0     5      OPC=callq_label        
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  vcvtps2pd %xmm11, %ymm1              #  3     0xa   5      OPC=vcvtps2pd_ymm_xmm  
  movsbq %r10b, %r11                   #  4     0xf   4      OPC=movsbq_r64_r8      
  callq .move_064_128_r10_r11_xmm1     #  5     0x13  5      OPC=callq_label        
  movlhps %xmm2, %xmm1                 #  6     0x18  3      OPC=movlhps_xmm_xmm    
  retq                                 #  7     0x1b  1      OPC=retq               
                                                                                    
.size target, .-target
