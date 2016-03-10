  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vpmovzxwq %xmm7, %xmm9                        #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm   
  vminsd %xmm1, %xmm9, %xmm1                    #  3     0xa   4      OPC=vminsd_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r12_r13              #  4     0xe   5      OPC=callq_label         
  andnq %r12, %r13, %rbx                        #  5     0x13  5      OPC=andnq_r64_r64_r64   
  cmovnoq %r13, %rbx                            #  6     0x18  4      OPC=cmovnoq_r64_r64     
  retq                                          #  7     0x1c  1      OPC=retq                
                                                                                              
.size target, .-target
