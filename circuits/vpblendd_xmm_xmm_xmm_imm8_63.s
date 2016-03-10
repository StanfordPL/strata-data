  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                
.target:                          #        0     0      OPC=<label>           
  callq .move_128_064_xmm3_r8_r9  #  1     0     5      OPC=callq_label       
  vmovq %r9, %xmm7                #  2     0x5   5      OPC=vmovq_xmm_r64     
  vmovddup %xmm7, %xmm1           #  3     0xa   4      OPC=vmovddup_xmm_xmm  
  callq .move_064_128_r8_r9_xmm1  #  4     0xe   5      OPC=callq_label       
  retq                            #  5     0x13  1      OPC=retq              
                                                                              
.size target, .-target
