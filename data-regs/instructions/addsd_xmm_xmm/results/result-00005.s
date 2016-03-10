  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vaddpd %xmm2, %xmm1, %xmm12  #  1     0    4      OPC=vaddpd_xmm_xmm_xmm  
  movsd %xmm12, %xmm1          #  2     0x4  5      OPC=movsd_xmm_xmm       
  retq                         #  3     0x9  1      OPC=retq                
                                                                            
.size target, .-target
