  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  vmovddup %ymm2, %ymm13                #  1     0     4      OPC=vmovddup_ymm_ymm      
  vmovhlps %xmm2, %xmm13, %xmm11        #  2     0x4   4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  3     0x8   5      OPC=callq_label           
  vminps %xmm13, %xmm13, %xmm10         #  4     0xd   5      OPC=vminps_xmm_xmm_xmm    
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x12  5      OPC=callq_label           
  callq .move_64_128_xmm10_xmm11_xmm1   #  6     0x17  5      OPC=callq_label           
  retq                                  #  7     0x1c  1      OPC=retq                  
                                                                                        
.size target, .-target
