  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm10_xmm11   #  1     0     5      OPC=callq_label           
  vpbroadcastw %xmm10, %ymm1            #  2     0x5   5      OPC=vpbroadcastw_ymm_xmm  
  callq .move_256_128_ymm1_xmm12_xmm13  #  3     0xa   5      OPC=callq_label           
  unpckhpd %xmm13, %xmm2                #  4     0xf   5      OPC=unpckhpd_xmm_xmm      
  vmovddup %ymm2, %ymm1                 #  5     0x14  4      OPC=vmovddup_ymm_ymm      
  retq                                  #  6     0x18  1      OPC=retq                  
                                                                                        
.size target, .-target
