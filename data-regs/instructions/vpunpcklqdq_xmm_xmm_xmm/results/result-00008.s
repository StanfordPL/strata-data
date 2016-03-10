  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r8_r9       #  1     0     5      OPC=callq_label        
  callq .move_128_64_xmm3_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  vcvtdq2ps %xmm11, %xmm15             #  3     0xa   5      OPC=vcvtdq2ps_xmm_xmm  
  movq %xmm3, %r9                      #  4     0xf   5      OPC=movq_r64_xmm       
  vmovdqa %ymm15, %ymm1                #  5     0x14  5      OPC=vmovdqa_ymm_ymm    
  callq .move_064_128_r8_r9_xmm1       #  6     0x19  5      OPC=callq_label        
  retq                                 #  7     0x1e  1      OPC=retq               
                                                                                    
.size target, .-target
