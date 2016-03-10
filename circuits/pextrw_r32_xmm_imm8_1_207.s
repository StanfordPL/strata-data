  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm7, %ymm5                     #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm  
  vpmovzxwd %xmm5, %ymm6                        #  3     0xa   5      OPC=vpmovzxwd_ymm_xmm     
  movq $0x40, %rbx                              #  4     0xf   10     OPC=movq_r64_imm64        
  vpbroadcastq %xmm6, %xmm3                     #  5     0x19  5      OPC=vpbroadcastq_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d      #  6     0x1e  5      OPC=callq_label           
  xchgl %ebx, %r9d                              #  7     0x23  3      OPC=xchgl_r32_r32         
  retq                                          #  8     0x26  1      OPC=retq                  
                                                                                                
.size target, .-target
