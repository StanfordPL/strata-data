  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  divps %xmm3, %xmm3          #  1     0    3      OPC=divps_xmm_xmm       
  vminps %ymm3, %ymm3, %ymm1  #  2     0x3  4      OPC=vminps_ymm_ymm_ymm  
  movdqu %xmm2, %xmm1         #  3     0x7  4      OPC=movdqu_xmm_xmm      
  retq                        #  4     0xb  1      OPC=retq                
                                                                           
.size target, .-target
