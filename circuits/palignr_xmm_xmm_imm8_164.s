  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                  
.target:                        #        0    0      OPC=<label>             
  vxorps %xmm2, %xmm2, %xmm11   #  1     0    4      OPC=vxorps_xmm_xmm_xmm  
  vmulss %xmm11, %xmm11, %xmm3  #  2     0x4  5      OPC=vmulss_xmm_xmm_xmm  
  movddup %xmm3, %xmm1          #  3     0x9  4      OPC=movddup_xmm_xmm     
  retq                          #  4     0xd  1      OPC=retq                
                                                                             
.size target, .-target
