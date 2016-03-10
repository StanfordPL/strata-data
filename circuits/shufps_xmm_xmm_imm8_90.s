  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vmaxss %xmm4, %xmm2, %xmm8                    #  2     0x5   4      OPC=vmaxss_xmm_xmm_xmm      
  vpunpckldq %xmm4, %xmm8, %xmm7                #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovsd %xmm6, %xmm4, %xmm0                    #  4     0xd   4      OPC=vmovsd_xmm_xmm_xmm      
  vmulss %xmm4, %xmm7, %xmm6                    #  5     0x11  4      OPC=vmulss_xmm_xmm_xmm      
  vmovsd %xmm0, %xmm6, %xmm11                   #  6     0x15  4      OPC=vmovsd_xmm_xmm_xmm      
  movsldup %xmm11, %xmm1                        #  7     0x19  5      OPC=movsldup_xmm_xmm        
  retq                                          #  8     0x1e  1      OPC=retq                    
                                                                                                  
.size target, .-target
