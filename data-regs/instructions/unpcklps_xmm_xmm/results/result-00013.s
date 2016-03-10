  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vbroadcastsd %xmm2, %ymm0  #  1     0    5      OPC=vbroadcastsd_ymm_xmm  
  movddup %xmm1, %xmm1       #  2     0x5  4      OPC=movddup_xmm_xmm       
  unpckhps %xmm0, %xmm1      #  3     0x9  3      OPC=unpckhps_xmm_xmm      
  retq                       #  4     0xc  1      OPC=retq                  
                                                                            
.size target, .-target
