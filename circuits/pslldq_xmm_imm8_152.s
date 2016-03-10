  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vminss %xmm1, %xmm1, %xmm12  #  1     0    4      OPC=vminss_xmm_xmm_xmm  
  xorps %xmm12, %xmm1          #  2     0x4  4      OPC=xorps_xmm_xmm       
  subsd %xmm1, %xmm1           #  3     0x8  4      OPC=subsd_xmm_xmm       
  retq                         #  4     0xc  1      OPC=retq                
                                                                            
.size target, .-target
