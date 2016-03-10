  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  pmovzxwq %xmm7, %xmm2                         #  2     0x5   5      OPC=pmovzxwq_xmm_xmm      
  vmovhlps %xmm2, %xmm2, %xmm4                  #  3     0xa   4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovd %xmm4, %ebx                             #  4     0xe   4      OPC=vmovd_r32_xmm         
  retq                                          #  5     0x12  1      OPC=retq                  
                                                                                                
.size target, .-target
