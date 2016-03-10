  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  unpcklps %xmm6, %xmm4                         #  2     0x5   3      OPC=unpcklps_xmm_xmm  
  vmovddup %xmm4, %xmm4                         #  3     0x8   4      OPC=vmovddup_xmm_xmm  
  movupd %xmm4, %xmm1                           #  4     0xc   4      OPC=movupd_xmm_xmm    
  retq                                          #  5     0x10  1      OPC=retq              
                                                                                            
.size target, .-target
