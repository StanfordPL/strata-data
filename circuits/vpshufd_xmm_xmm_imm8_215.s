  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                      
.target:                                    #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label             
  vzeroall                                  #  2     0x5   3      OPC=vzeroall                
  movd %r9d, %xmm2                          #  3     0x8   5      OPC=movd_xmm_r32            
  movd %edx, %xmm15                         #  4     0xd   5      OPC=movd_xmm_r32            
  vbroadcastss %xmm2, %xmm14                #  5     0x12  5      OPC=vbroadcastss_xmm_xmm    
  vpunpckldq %xmm14, %xmm15, %xmm9          #  6     0x17  5      OPC=vpunpckldq_xmm_xmm_xmm  
  vpunpckldq %xmm9, %xmm14, %xmm8           #  7     0x1c  5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1         #  8     0x21  5      OPC=callq_label             
  retq                                      #  9     0x26  1      OPC=retq                    
                                                                                              
.size target, .-target
