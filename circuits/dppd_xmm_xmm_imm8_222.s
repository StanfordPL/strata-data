  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmulpd %xmm2, %xmm1, %xmm4  #  1     0     4      OPC=vmulpd_xmm_xmm_xmm  
  xorps %xmm1, %xmm1          #  2     0x4   3      OPC=xorps_xmm_xmm       
  vmovq %xmm4, %xmm8          #  3     0x7   4      OPC=vmovq_xmm_xmm       
  haddpd %xmm8, %xmm1         #  4     0xb   5      OPC=haddpd_xmm_xmm      
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
