  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label         
  vzeroall                            #  2     0x5   3      OPC=vzeroall            
  vmovd %ebx, %xmm14                  #  3     0x8   4      OPC=vmovd_xmm_r32       
  callq .move_byte_29_of_ymm1_to_r8b  #  4     0xc   5      OPC=callq_label         
  callq .move_064_128_r8_r9_xmm1      #  5     0x11  5      OPC=callq_label         
  vmovss %xmm14, %xmm1, %xmm1         #  6     0x16  5      OPC=vmovss_xmm_xmm_xmm  
  retq                                #  7     0x1b  1      OPC=retq                
                                                                                    
.size target, .-target
