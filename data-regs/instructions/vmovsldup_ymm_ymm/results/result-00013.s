  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  movsldup %xmm2, %xmm8                 #  1     0     5      OPC=movsldup_xmm_xmm      
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  vmovsldup %xmm11, %xmm9               #  3     0xa   5      OPC=vmovsldup_xmm_xmm     
  vbroadcastss %xmm8, %ymm1             #  4     0xf   5      OPC=vbroadcastss_ymm_xmm  
  callq .move_128_064_xmm1_r8_r9        #  5     0x14  5      OPC=callq_label           
  callq .move_128_256_xmm8_xmm9_ymm1    #  6     0x19  5      OPC=callq_label           
  callq .move_r9b_to_byte_0_of_ymm1     #  7     0x1e  5      OPC=callq_label           
  retq                                  #  8     0x23  1      OPC=retq                  
                                                                                        
.size target, .-target
