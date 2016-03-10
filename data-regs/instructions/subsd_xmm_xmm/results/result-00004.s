  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vsubpd %xmm2, %xmm1, %xmm10  #  1     0    4      OPC=vsubpd_xmm_xmm_xmm  
  andps %xmm1, %xmm1           #  2     0x4  3      OPC=andps_xmm_xmm       
  movsd %xmm10, %xmm1          #  3     0x7  5      OPC=movsd_xmm_xmm       
  retq                         #  4     0xc  1      OPC=retq                
                                                                            
.size target, .-target
