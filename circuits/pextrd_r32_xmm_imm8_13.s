  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  movq $0xfffffffffffffff9, %rbx                #  1     0     10     OPC=movq_r64_imm64        
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0xa   5      OPC=callq_label           
  vpbroadcastq %xmm5, %xmm1                     #  3     0xf   5      OPC=vpbroadcastq_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9                #  4     0x14  5      OPC=callq_label           
  andb %bh, %bh                                 #  5     0x19  2      OPC=andb_rh_rh            
  cmovnzl %r9d, %ebx                            #  6     0x1b  4      OPC=cmovnzl_r32_r32       
  retq                                          #  7     0x1f  1      OPC=retq                  
                                                                                                
.size target, .-target
