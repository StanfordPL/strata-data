  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                
.target:                                          #        0    0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label       
  pmovzxwq %xmm11, %xmm11                         #  2     0x5  6      OPC=pmovzxwq_xmm_xmm  
  vmovd %xmm11, %ebx                              #  3     0xb  4      OPC=vmovd_r32_xmm     
  retq                                            #  4     0xf  1      OPC=retq              
                                                                                             
.size target, .-target
