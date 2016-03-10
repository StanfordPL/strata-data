  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vaddss %xmm1, %xmm1, %xmm4  #  1     0    4      OPC=vaddss_xmm_xmm_xmm  
  xorps %xmm4, %xmm1          #  2     0x4  3      OPC=xorps_xmm_xmm       
  subsd %xmm1, %xmm1          #  3     0x7  4      OPC=subsd_xmm_xmm       
  retq                        #  4     0xb  1      OPC=retq                
                                                                           
.size target, .-target
