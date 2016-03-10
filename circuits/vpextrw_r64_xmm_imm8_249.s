  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  vpbroadcastq %xmm1, %xmm15        #  1     0     5      OPC=vpbroadcastq_xmm_xmm  
  pmovzxwq %xmm15, %xmm1            #  2     0x5   6      OPC=pmovzxwq_xmm_xmm      
  callq .move_128_064_xmm1_r12_r13  #  3     0xb   5      OPC=callq_label           
  movzwq %r13w, %rbx                #  4     0x10  4      OPC=movzwq_r64_r16        
  retq                              #  5     0x14  1      OPC=retq                  
                                                                                    
.size target, .-target
