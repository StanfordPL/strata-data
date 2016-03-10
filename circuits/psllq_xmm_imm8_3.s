  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmaxps %xmm1, %xmm1, %xmm4  #  1     0     4      OPC=vmaxps_xmm_xmm_xmm  
  paddq %xmm4, %xmm4          #  2     0x4   4      OPC=paddq_xmm_xmm       
  vpaddq %xmm4, %xmm4, %xmm2  #  3     0x8   4      OPC=vpaddq_xmm_xmm_xmm  
  vpaddq %xmm2, %xmm2, %xmm0  #  4     0xc   4      OPC=vpaddq_xmm_xmm_xmm  
  movdqa %xmm0, %xmm1         #  5     0x10  4      OPC=movdqa_xmm_xmm      
  retq                        #  6     0x14  1      OPC=retq                
                                                                            
.size target, .-target
