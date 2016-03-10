  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastb %xmm2, %xmm10  #  1     0    5      OPC=vpbroadcastb_xmm_xmm  
  vpbroadcastd %xmm10, %ymm6  #  2     0x5  5      OPC=vpbroadcastd_ymm_xmm  
  vmovaps %ymm6, %ymm1        #  3     0xa  4      OPC=vmovaps_ymm_ymm       
  retq                        #  4     0xe  1      OPC=retq                  
                                                                             
.size target, .-target
