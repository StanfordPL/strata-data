  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastq %xmm2, %xmm10  #  1     0    5      OPC=vpbroadcastq_xmm_xmm  
  vcvtdq2pd %ymm10, %ymm3     #  2     0x5  5      OPC=vcvtdq2pd_ymm_ymm     
  movdqa %xmm3, %xmm1         #  3     0xa  4      OPC=movdqa_xmm_xmm        
  retq                        #  4     0xe  1      OPC=retq                  
                                                                             
.size target, .-target
