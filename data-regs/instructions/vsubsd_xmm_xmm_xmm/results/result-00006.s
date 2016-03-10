  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP  Bytes  Opcode                  
.target:                        #        0    0      OPC=<label>             
  vsubpd %xmm3, %xmm2, %xmm12   #  1     0    4      OPC=vsubpd_xmm_xmm_xmm  
  vorps %xmm12, %xmm12, %xmm11  #  2     0x4  5      OPC=vorps_xmm_xmm_xmm   
  vmovsd %xmm11, %xmm2, %xmm1   #  3     0x9  5      OPC=vmovsd_xmm_xmm_xmm  
  retq                          #  4     0xe  1      OPC=retq                
                                                                             
.size target, .-target
