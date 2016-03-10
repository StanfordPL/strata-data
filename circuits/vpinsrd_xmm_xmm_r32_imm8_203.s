  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r12_r13              #  1     0     5      OPC=callq_label        
  vzeroall                                      #  2     0x5   3      OPC=vzeroall           
  vpxor %ymm14, %ymm12, %ymm1                   #  3     0x8   5      OPC=vpxor_ymm_ymm_ymm  
  callq .move_064_128_r12_r13_xmm2              #  4     0xd   5      OPC=callq_label        
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  5     0x12  5      OPC=callq_label        
  vmovd %ebx, %xmm7                             #  6     0x17  4      OPC=vmovd_xmm_r32      
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  7     0x1b  5      OPC=callq_label        
  retq                                          #  8     0x20  1      OPC=retq               
                                                                                             
.size target, .-target
