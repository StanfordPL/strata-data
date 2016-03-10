  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                      #  Line  RIP  Bytes  Opcode                
.target:                    #        0    0      OPC=<label>           
  vpor %ymm3, %ymm3, %ymm1  #  1     0    4      OPC=vpor_ymm_ymm_ymm  
  vpor %ymm1, %ymm3, %ymm2  #  2     0x4  4      OPC=vpor_ymm_ymm_ymm  
  andnps %xmm2, %xmm1       #  3     0x8  3      OPC=andnps_xmm_xmm    
  retq                      #  4     0xb  1      OPC=retq              
                                                                       
.size target, .-target
