  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  vbroadcastss %xmm1, %xmm3                     #  1     0     5      OPC=vbroadcastss_xmm_xmm  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label           
  vmovq %xmm4, %r8                              #  3     0xa   5      OPC=vmovq_r64_xmm         
  movzwq %r8w, %rbx                             #  4     0xf   4      OPC=movzwq_r64_r16        
  retq                                          #  5     0x13  1      OPC=retq                  
                                                                                                
.size target, .-target
