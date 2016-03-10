  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode               
.target:                               #        0     0      OPC=<label>          
  vmovq %rbx, %xmm1                    #  1     0     5      OPC=vmovq_xmm_r64    
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label      
  vmovapd %xmm1, %xmm10                #  3     0xa   4      OPC=vmovapd_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  4     0xe   5      OPC=callq_label      
  retq                                 #  5     0x13  1      OPC=retq             
                                                                                  
.size target, .-target
