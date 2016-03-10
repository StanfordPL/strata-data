  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  pmovsxdq %xmm1, %xmm3                     #  1     0     5      OPC=pmovsxdq_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label       
  callq .move_016_032_r8w_r9w_edx           #  3     0xa   5      OPC=callq_label       
  movzwq %dx, %rbx                          #  4     0xf   4      OPC=movzwq_r64_r16    
  retq                                      #  5     0x13  1      OPC=retq              
                                                                                        
.size target, .-target
