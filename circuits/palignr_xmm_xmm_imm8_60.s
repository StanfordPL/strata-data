  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                
.target:                                        #        0    0      OPC=<label>           
  andnps %xmm2, %xmm2                           #  1     0    3      OPC=andnps_xmm_xmm    
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x3  5      OPC=callq_label       
  movsldup %xmm5, %xmm1                         #  3     0x8  4      OPC=movsldup_xmm_xmm  
  retq                                          #  4     0xc  1      OPC=retq              
                                                                                           
.size target, .-target
