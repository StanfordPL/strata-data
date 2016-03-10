  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  callq .move_256_128_ymm2_xmm8_xmm9    #  2     0x5   5      OPC=callq_label           
  vmovhlps %xmm9, %xmm12, %xmm1         #  3     0xa   5      OPC=vmovhlps_xmm_xmm_xmm  
  vbroadcastsd %xmm1, %ymm1             #  4     0xf   5      OPC=vbroadcastsd_ymm_xmm  
  unpcklpd %xmm2, %xmm1                 #  5     0x14  4      OPC=unpcklpd_xmm_xmm      
  retq                                  #  6     0x18  1      OPC=retq                  
                                                                                        
.size target, .-target
