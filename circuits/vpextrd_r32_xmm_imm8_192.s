  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  cvtsd2ss %xmm1, %xmm9                           #  2     0x5   5      OPC=cvtsd2ss_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3  #  3     0xa   5      OPC=callq_label       
  movd %xmm3, %ebx                                #  4     0xf   4      OPC=movd_r32_xmm      
  retq                                            #  5     0x13  1      OPC=retq              
                                                                                              
.size target, .-target
