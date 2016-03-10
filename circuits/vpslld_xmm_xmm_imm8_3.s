  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovdqa %xmm2, %xmm4        #  1     0     4      OPC=vmovdqa_xmm_xmm     
  paddd %xmm4, %xmm4          #  2     0x4   4      OPC=paddd_xmm_xmm       
  vpaddd %xmm4, %xmm4, %xmm0  #  3     0x8   4      OPC=vpaddd_xmm_xmm_xmm  
  vpaddd %xmm0, %xmm0, %xmm7  #  4     0xc   4      OPC=vpaddd_xmm_xmm_xmm  
  vandps %xmm7, %xmm7, %xmm1  #  5     0x10  4      OPC=vandps_xmm_xmm_xmm  
  retq                        #  6     0x14  1      OPC=retq                
                                                                            
.size target, .-target
