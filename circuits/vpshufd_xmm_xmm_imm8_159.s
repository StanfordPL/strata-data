  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_eax_edx_r8d_r9d        #  1     0     5      OPC=callq_label           
  vzeroall                                        #  2     0x5   3      OPC=vzeroall              
  movd %edx, %xmm10                               #  3     0x8   5      OPC=movd_xmm_r32          
  movd %r9d, %xmm12                               #  4     0xd   5      OPC=movd_xmm_r32          
  vbroadcastss %xmm12, %ymm2                      #  5     0x12  5      OPC=vbroadcastss_ymm_xmm  
  callq .move_256_128_ymm2_xmm8_xmm9              #  6     0x17  5      OPC=callq_label           
  movd %r8d, %xmm11                               #  7     0x1c  5      OPC=movd_xmm_r32          
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x21  5      OPC=callq_label           
  retq                                            #  9     0x26  1      OPC=retq                  
                                                                                                  
.size target, .-target
