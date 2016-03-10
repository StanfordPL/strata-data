  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  movq $0x10, %rbx                  #  1     0     10     OPC=movq_r64_imm64        
  xaddb %bh, %bh                    #  2     0xa   3      OPC=xaddb_rh_rh           
  vpbroadcastq %xmm1, %ymm3         #  3     0xd   5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_128_064_xmm3_r12_r13  #  4     0x12  5      OPC=callq_label           
  cmoveq %r13, %rbx                 #  5     0x17  4      OPC=cmoveq_r64_r64        
  retq                              #  6     0x1b  1      OPC=retq                  
                                                                                    
.size target, .-target
