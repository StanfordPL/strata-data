  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vmovsldup %xmm3, %xmm1  #  1     0    4      OPC=vmovsldup_xmm_xmm  
  unpckhps %xmm2, %xmm1   #  2     0x4  3      OPC=unpckhps_xmm_xmm   
  movsd %xmm2, %xmm1      #  3     0x7  4      OPC=movsd_xmm_xmm      
  retq                    #  4     0xb  1      OPC=retq               
                                                                      
.size target, .-target
