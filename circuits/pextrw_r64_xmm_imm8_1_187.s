  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode                 
.target:                                    #        0    0      OPC=<label>            
  vpmovzxwd %xmm1, %xmm1                    #  1     0    5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x5  5      OPC=callq_label        
  movl %r9d, %ebx                           #  3     0xa  3      OPC=movl_r32_r32       
  retq                                      #  4     0xd  1      OPC=retq               
                                                                                        
.size target, .-target
