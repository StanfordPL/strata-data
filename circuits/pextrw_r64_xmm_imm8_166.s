  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vpbroadcastd %xmm11, %ymm3                      #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm  
  movq $0x7, %rbx                                 #  3     0xa   10     OPC=movq_r64_imm64        
  callq .move_128_032_xmm3_eax_edx_r8d_r9d        #  4     0x14  5      OPC=callq_label           
  popcntl %ebx, %r12d                             #  5     0x19  5      OPC=popcntl_r32_r32       
  cmovnlew %ax, %bx                               #  6     0x1e  4      OPC=cmovnlew_r16_r16      
  retq                                            #  7     0x22  1      OPC=retq                  
                                                                                                  
.size target, .-target
