  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm10, %xmm9, %xmm3                #  2     0x5   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d        #  3     0xa   5      OPC=callq_label              
  movl %eax, %ebx                                 #  4     0xf   2      OPC=movl_r32_r32             
  retq                                            #  5     0x11  1      OPC=retq                     
                                                                                                     
.size target, .-target
