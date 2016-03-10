  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                      
.target:                              #        0     0      OPC=<label>                 
  vmovshdup %ymm2, %ymm1              #  1     0     4      OPC=vmovshdup_ymm_ymm       
  callq .move_256_128_ymm1_xmm8_xmm9  #  2     0x4   5      OPC=callq_label             
  vcvtps2pd %xmm8, %ymm3              #  3     0x9   5      OPC=vcvtps2pd_ymm_xmm       
  vunpcklpd %ymm1, %ymm3, %ymm15      #  4     0xe   4      OPC=vunpcklpd_ymm_ymm_ymm   
  vpunpckhdq %ymm2, %ymm15, %ymm1     #  5     0x12  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                                #  6     0x16  1      OPC=retq                    
                                                                                        
.size target, .-target
