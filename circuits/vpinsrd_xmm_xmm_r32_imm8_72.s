  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label         
  callq .move_064_128_r12_r13_xmm1  #  2     0x5   5      OPC=callq_label         
  vmovd %ebx, %xmm9                 #  3     0xa   4      OPC=vmovd_xmm_r32       
  vmovss %xmm9, %xmm1, %xmm1        #  4     0xe   5      OPC=vmovss_xmm_xmm_xmm  
  retq                              #  5     0x13  1      OPC=retq                
                                                                                  
.size target, .-target
