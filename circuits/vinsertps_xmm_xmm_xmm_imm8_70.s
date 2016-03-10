  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpckhps %xmm2, %xmm8, %xmm0                   #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovddup %xmm9, %xmm1                           #  3     0x9   5      OPC=vmovddup_xmm_xmm       
  punpckhdq %xmm0, %xmm1                          #  4     0xe   4      OPC=punpckhdq_xmm_xmm      
  retq                                            #  5     0x12  1      OPC=retq                   
                                                                                                   
.size target, .-target
