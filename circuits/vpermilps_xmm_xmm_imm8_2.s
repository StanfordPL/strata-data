  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label           
  vzeroall                                  #  2     0x5   3      OPC=vzeroall              
  movd %eax, %xmm2                          #  3     0x8   4      OPC=movd_xmm_r32          
  callq .move_256_128_ymm2_xmm10_xmm11      #  4     0xc   5      OPC=callq_label           
  vmovd %r8d, %xmm0                         #  5     0x11  5      OPC=vmovd_xmm_r32         
  vpbroadcastd %xmm10, %xmm7                #  6     0x16  5      OPC=vpbroadcastd_xmm_xmm  
  vmovss %xmm0, %xmm7, %xmm1                #  7     0x1b  4      OPC=vmovss_xmm_xmm_xmm    
  retq                                      #  8     0x1f  1      OPC=retq                  
                                                                                            
.size target, .-target
