  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastd %xmm2, %xmm12  #  1     0    5      OPC=vpbroadcastd_xmm_xmm  
  vpxor %ymm2, %ymm12, %ymm1  #  2     0x5  4      OPC=vpxor_ymm_ymm_ymm     
  movupd %xmm3, %xmm1         #  3     0x9  4      OPC=movupd_xmm_xmm        
  retq                        #  4     0xd  1      OPC=retq                  
                                                                             
.size target, .-target
