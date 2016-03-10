  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vrcpps %xmm1, %xmm0         #  1     0    4      OPC=vrcpps_xmm_xmm      
  vpandn %ymm0, %ymm0, %ymm5  #  2     0x4  4      OPC=vpandn_ymm_ymm_ymm  
  movsldup %xmm5, %xmm1       #  3     0x8  4      OPC=movsldup_xmm_xmm    
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
