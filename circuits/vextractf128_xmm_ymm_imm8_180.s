  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vminps %ymm1, %ymm1, %ymm6  #  1     0    4      OPC=vminps_ymm_ymm_ymm  
  vorpd %xmm6, %xmm6, %xmm1   #  2     0x4  4      OPC=vorpd_xmm_xmm_xmm   
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target
