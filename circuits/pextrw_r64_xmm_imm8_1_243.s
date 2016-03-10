  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwd %xmm5, %xmm1                        #  2     0x5   5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d      #  3     0xa   5      OPC=callq_label        
  movl %edx, %ebx                               #  4     0xf   2      OPC=movl_r32_r32       
  retq                                          #  5     0x11  1      OPC=retq               
                                                                                             
.size target, .-target
