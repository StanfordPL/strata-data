  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vandnps %xmm1, %xmm2, %xmm15  #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  vxorps %xmm1, %xmm15, %xmm8   #  2     0x4  4      OPC=vxorps_xmm_xmm_xmm   
  movaps %xmm8, %xmm1           #  3     0x8  4      OPC=movaps_xmm_xmm       
  retq                          #  4     0xc  1      OPC=retq                 
                                                                              
.size target, .-target
