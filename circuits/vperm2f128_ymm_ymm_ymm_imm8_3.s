  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  callq .move_128_64_xmm2_xmm12_xmm13   #  1     0     5      OPC=callq_label        
  callq .move_256_128_ymm3_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  vorps %ymm2, %ymm2, %ymm13            #  3     0xa   4      OPC=vorps_ymm_ymm_ymm  
  vmovdqu %xmm11, %xmm7                 #  4     0xe   5      OPC=vmovdqu_xmm_xmm    
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x13  5      OPC=callq_label        
  movupd %xmm7, %xmm1                   #  6     0x18  4      OPC=movupd_xmm_xmm     
  retq                                  #  7     0x1c  1      OPC=retq               
                                                                                     
.size target, .-target
