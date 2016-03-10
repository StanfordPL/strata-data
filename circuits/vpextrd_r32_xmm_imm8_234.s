  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vbroadcastsd %xmm1, %ymm5  #  1     0    5      OPC=vbroadcastsd_ymm_xmm  
  unpckhps %xmm5, %xmm1      #  2     0x5  3      OPC=unpckhps_xmm_xmm      
  movd %xmm1, %ebx           #  3     0x8  4      OPC=movd_r32_xmm          
  retq                       #  4     0xc  1      OPC=retq                  
                                                                            
.size target, .-target
