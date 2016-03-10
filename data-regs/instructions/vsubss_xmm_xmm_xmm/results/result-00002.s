  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  callq .move_128_064_xmm2_r8_r9                #  1     0     5      OPC=callq_label               
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  2     0x5   5      OPC=callq_label               
  vzeroall                                      #  3     0xa   3      OPC=vzeroall                  
  callq .move_032_064_r10d_r11d_rdx             #  4     0xd   5      OPC=callq_label               
  vmovd %edx, %xmm5                             #  5     0x12  4      OPC=vmovd_xmm_r32             
  callq .move_064_128_r8_r9_xmm2                #  6     0x16  5      OPC=callq_label               
  vfnmsub213ps %ymm5, %ymm1, %ymm13             #  7     0x1b  5      OPC=vfnmsub213ps_ymm_ymm_ymm  
  vaddss %xmm13, %xmm2, %xmm1                   #  8     0x20  5      OPC=vaddss_xmm_xmm_xmm        
  retq                                          #  9     0x25  1      OPC=retq                      
                                                                                                    
.size target, .-target
