  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  vmovddup %xmm10, %xmm1                          #  2     0x5   5      OPC=vmovddup_xmm_xmm  
  vmovq %xmm1, %xmm8                              #  3     0xa   4      OPC=vmovq_xmm_xmm     
  movd %xmm8, %ebx                                #  4     0xe   5      OPC=movd_r32_xmm      
  retq                                            #  5     0x13  1      OPC=retq              
                                                                                              
.size target, .-target
