  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vaddss %xmm2, %xmm3, %xmm1  #  1     0    4      OPC=vaddss_xmm_xmm_xmm  
  xorps %xmm3, %xmm2          #  2     0x4  3      OPC=xorps_xmm_xmm       
  movapd %xmm2, %xmm1         #  3     0x7  4      OPC=movapd_xmm_xmm      
  retq                        #  4     0xb  1      OPC=retq                
                                                                           
.size target, .-target
