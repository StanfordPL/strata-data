  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  punpckldq %xmm10, %xmm11                        #  2     0x5   5      OPC=punpckldq_xmm_xmm     
  vmovlhps %xmm2, %xmm11, %xmm10                  #  3     0xa   4      OPC=vmovlhps_xmm_xmm_xmm  
  movups %xmm10, %xmm1                            #  4     0xe   4      OPC=movups_xmm_xmm        
  retq                                            #  5     0x12  1      OPC=retq                  
                                                                                                  
.size target, .-target
