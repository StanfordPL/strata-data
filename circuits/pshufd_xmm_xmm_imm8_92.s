  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpbroadcastq %xmm2, %xmm4         #  1     0     5      OPC=vpbroadcastq_xmm_xmm     
  vmovshdup %xmm4, %xmm8            #  2     0x5   4      OPC=vmovshdup_xmm_xmm        
  vpunpckhqdq %xmm8, %xmm2, %xmm12  #  3     0x9   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movups %xmm12, %xmm1              #  4     0xe   4      OPC=movups_xmm_xmm           
  movss %xmm4, %xmm1                #  5     0x12  4      OPC=movss_xmm_xmm            
  retq                              #  6     0x16  1      OPC=retq                     
                                                                                       
.size target, .-target
