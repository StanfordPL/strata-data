  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovsldup %xmm2, %xmm8      #  1     0     4      OPC=vmovsldup_xmm_xmm   
  vmaxss %xmm8, %xmm8, %xmm1  #  2     0x4   5      OPC=vmaxss_xmm_xmm_xmm  
  unpckhps %xmm3, %xmm1       #  3     0x9   3      OPC=unpckhps_xmm_xmm    
  movsd %xmm2, %xmm1          #  4     0xc   4      OPC=movsd_xmm_xmm       
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
