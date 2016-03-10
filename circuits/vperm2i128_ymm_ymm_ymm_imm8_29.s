  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vandnps %ymm3, %ymm3, %ymm10  #  1     0    4      OPC=vandnps_ymm_ymm_ymm  
  vpaddd %ymm10, %ymm2, %ymm1   #  2     0x4  5      OPC=vpaddd_ymm_ymm_ymm   
  xorps %xmm1, %xmm1            #  3     0x9  3      OPC=xorps_xmm_xmm        
  retq                          #  4     0xc  1      OPC=retq                 
                                                                              
.size target, .-target
