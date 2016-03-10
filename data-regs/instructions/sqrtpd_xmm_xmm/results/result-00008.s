  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  vsqrtpd %xmm2, %xmm2  #  1     0    4      OPC=vsqrtpd_xmm_xmm  
  movapd %xmm2, %xmm14  #  2     0x4  5      OPC=movapd_xmm_xmm   
  movaps %xmm14, %xmm1  #  3     0x9  4      OPC=movaps_xmm_xmm   
  retq                  #  4     0xd  1      OPC=retq             
                                                                  
.size target, .-target
