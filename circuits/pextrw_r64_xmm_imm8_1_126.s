  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm7, %xmm2                        #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  vmovmskpd %xmm4, %rbx                         #  3     0xa   4      OPC=vmovmskpd_r64_xmm  
  callq .move_128_064_xmm2_r8_r9                #  4     0xe   5      OPC=callq_label        
  salb $0x1, %bh                                #  5     0x13  2      OPC=salb_rh_one        
  cmovncl %r8d, %ebx                            #  6     0x15  4      OPC=cmovncl_r32_r32    
  retq                                          #  7     0x19  1      OPC=retq               
                                                                                             
.size target, .-target
