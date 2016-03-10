  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vmovlhps %xmm2, %xmm1, %xmm3  #  1     0    4      OPC=vmovlhps_xmm_xmm_xmm  
  punpcklqdq %xmm3, %xmm1       #  2     0x4  4      OPC=punpcklqdq_xmm_xmm    
  unpckhps %xmm3, %xmm1         #  3     0x8  3      OPC=unpckhps_xmm_xmm      
  retq                          #  4     0xb  1      OPC=retq                  
                                                                               
.size target, .-target
