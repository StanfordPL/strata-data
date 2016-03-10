  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vcvtsd2ss %xmm6, %xmm4, %xmm2                 #  2     0x5   4      OPC=vcvtsd2ss_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm8_xmm9             #  3     0x9   5      OPC=callq_label            
  movq %xmm9, %xmm1                             #  4     0xe   5      OPC=movq_xmm_xmm           
  retq                                          #  5     0x13  1      OPC=retq                   
                                                                                                 
.size target, .-target
