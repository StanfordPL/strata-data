  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vandps %xmm3, %xmm3, %xmm9          #  1     0     4      OPC=vandps_xmm_xmm_xmm  
  vpmovsxbq %xmm9, %xmm8              #  2     0x4   5      OPC=vpmovsxbq_xmm_xmm   
  callq .move_128_256_xmm8_xmm9_ymm3  #  3     0x9   5      OPC=callq_label         
  vpor %ymm8, %ymm3, %ymm1            #  4     0xe   5      OPC=vpor_ymm_ymm_ymm    
  vpmovzxbq %xmm9, %ymm4              #  5     0x13  5      OPC=vpmovzxbq_ymm_xmm   
  cvtpd2ps %xmm4, %xmm1               #  6     0x18  4      OPC=cvtpd2ps_xmm_xmm    
  retq                                #  7     0x1c  1      OPC=retq                
                                                                                    
.size target, .-target
