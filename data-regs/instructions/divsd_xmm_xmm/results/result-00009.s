  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP  Bytes  Opcode              
.target:                #        0    0      OPC=<label>         
  movaps %xmm1, %xmm12  #  1     0    4      OPC=movaps_xmm_xmm  
  divpd %xmm2, %xmm12   #  2     0x4  5      OPC=divpd_xmm_xmm   
  movsd %xmm12, %xmm1   #  3     0x9  5      OPC=movsd_xmm_xmm   
  retq                  #  4     0xe  1      OPC=retq            
                                                                 
.size target, .-target
