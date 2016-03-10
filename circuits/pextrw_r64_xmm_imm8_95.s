  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  pmovzxwq %xmm11, %xmm3                          #  2     0x5   6      OPC=pmovzxwq_xmm_xmm  
  movhlps %xmm3, %xmm3                            #  3     0xb   3      OPC=movhlps_xmm_xmm   
  movq %xmm3, %rbx                                #  4     0xe   5      OPC=movq_r64_xmm      
  retq                                            #  5     0x13  1      OPC=retq              
                                                                                              
.size target, .-target
