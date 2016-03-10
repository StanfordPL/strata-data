  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwd %xmm4, %ymm3                        #  2     0x5   5      OPC=vpmovzxwd_ymm_xmm  
  vmovmskpd %xmm3, %rbx                         #  3     0xa   4      OPC=vmovmskpd_r64_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d      #  4     0xe   5      OPC=callq_label        
  movw %dx, %bx                                 #  5     0x13  3      OPC=movw_r16_r16       
  retq                                          #  6     0x16  1      OPC=retq               
                                                                                             
.size target, .-target
