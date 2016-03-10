  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  callq .move_128_064_xmm3_r12_r13  #  1     0     5      OPC=callq_label        
  callq .move_128_064_xmm2_r10_r11  #  2     0x5   5      OPC=callq_label        
  vmovdqu %xmm3, %xmm7              #  3     0xa   4      OPC=vmovdqu_xmm_xmm    
  vcvtdq2ps %ymm7, %ymm1            #  4     0xe   4      OPC=vcvtdq2ps_ymm_ymm  
  orq %r11, %r13                    #  5     0x12  3      OPC=orq_r64_r64        
  orq %r10, %r12                    #  6     0x15  3      OPC=orq_r64_r64        
  callq .move_064_128_r12_r13_xmm1  #  7     0x18  5      OPC=callq_label        
  retq                              #  8     0x1d  1      OPC=retq               
                                                                                 
.size target, .-target
