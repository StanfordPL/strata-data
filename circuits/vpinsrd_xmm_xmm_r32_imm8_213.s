  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  movd %ebx, %xmm3                              #  1     0     4      OPC=movd_xmm_r32            
  vpunpckldq %xmm3, %xmm2, %xmm10               #  2     0x4   4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0x8   5      OPC=callq_label             
  vmovlhps %xmm10, %xmm4, %xmm5                 #  4     0xd   5      OPC=vmovlhps_xmm_xmm_xmm    
  vmovhlps %xmm5, %xmm2, %xmm1                  #  5     0x12  4      OPC=vmovhlps_xmm_xmm_xmm    
  retq                                          #  6     0x16  1      OPC=retq                    
                                                                                                  
.size target, .-target
