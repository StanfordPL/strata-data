  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmulpd %xmm2, %xmm1, %xmm14  #  1     0    4      OPC=vmulpd_xmm_xmm_xmm  
  xorps %xmm1, %xmm1           #  2     0x4  3      OPC=xorps_xmm_xmm       
  addsd %xmm14, %xmm1          #  3     0x7  5      OPC=addsd_xmm_xmm       
  retq                         #  4     0xc  1      OPC=retq                
                                                                            
.size target, .-target
