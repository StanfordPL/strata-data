  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  callq .move_128_64_xmm2_xmm10_xmm11           #  2     0x5   5      OPC=callq_label           
  movq %xmm5, %xmm1                             #  3     0xa   4      OPC=movq_xmm_xmm          
  vmovhlps %xmm2, %xmm1, %xmm15                 #  4     0xe   4      OPC=vmovhlps_xmm_xmm_xmm  
  unpcklpd %xmm15, %xmm11                       #  5     0x12  5      OPC=unpcklpd_xmm_xmm      
  callq .move_64_128_xmm10_xmm11_xmm1           #  6     0x17  5      OPC=callq_label           
  retq                                          #  7     0x1c  1      OPC=retq                  
                                                                                                
.size target, .-target
