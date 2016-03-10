  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmaxsd %xmm3, %xmm2, %xmm10  #  1     0    4      OPC=vmaxsd_xmm_xmm_xmm  
  movsd %xmm3, %xmm10          #  2     0x4  5      OPC=movsd_xmm_xmm       
  vminpd %xmm10, %xmm2, %xmm1  #  3     0x9  5      OPC=vminpd_xmm_xmm_xmm  
  retq                         #  4     0xe  1      OPC=retq                
                                                                            
.size target, .-target
