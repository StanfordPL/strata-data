  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                  
.target:                        #        0    0      OPC=<label>             
  vxorps %xmm14, %xmm14, %xmm3  #  1     0    5      OPC=vxorps_xmm_xmm_xmm  
  movddup %xmm3, %xmm1          #  2     0x5  4      OPC=movddup_xmm_xmm     
  retq                          #  3     0x9  1      OPC=retq                
                                                                             
.size target, .-target
