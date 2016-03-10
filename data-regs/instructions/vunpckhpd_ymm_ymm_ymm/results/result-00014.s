  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_256_128_ymm3_xmm8_xmm9    #  1     0     5      OPC=callq_label           
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label           
  unpckhpd %xmm9, %xmm13                #  3     0xa   5      OPC=unpckhpd_xmm_xmm      
  vmovhlps %xmm12, %xmm3, %xmm12        #  4     0xf   5      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x14  5      OPC=callq_label           
  retq                                  #  6     0x19  1      OPC=retq                  
                                                                                        
.size target, .-target
