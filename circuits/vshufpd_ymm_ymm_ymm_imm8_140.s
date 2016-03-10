  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpckhpd %ymm3, %ymm2, %ymm1  #  1     0    4      OPC=vunpckhpd_ymm_ymm_ymm  
  movlhps %xmm3, %xmm2           #  2     0x4  3      OPC=movlhps_xmm_xmm        
  movapd %xmm2, %xmm1            #  3     0x7  4      OPC=movapd_xmm_xmm         
  retq                           #  4     0xb  1      OPC=retq                   
                                                                                 
.size target, .-target
