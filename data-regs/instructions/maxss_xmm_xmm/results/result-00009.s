  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vmovapd %xmm1, %xmm10         #  1     0     4      OPC=vmovapd_xmm_xmm     
  vmovups %xmm2, %xmm12         #  2     0x4   4      OPC=vmovups_xmm_xmm     
  vmaxss %xmm12, %xmm10, %xmm2  #  3     0x8   5      OPC=vmaxss_xmm_xmm_xmm  
  movss %xmm2, %xmm1            #  4     0xd   4      OPC=movss_xmm_xmm       
  retq                          #  5     0x11  1      OPC=retq                
                                                                              
.size target, .-target
