  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  callq .move_128_032_xmm2_eax_edx_r8d_r9d        #  2     0x5   5      OPC=callq_label       
  vmovd %eax, %xmm15                              #  3     0xa   4      OPC=vmovd_xmm_r32     
  movd %r9d, %xmm11                               #  4     0xe   5      OPC=movd_xmm_r32      
  movss %xmm15, %xmm8                             #  5     0x13  5      OPC=movss_xmm_xmm     
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3  #  6     0x18  5      OPC=callq_label       
  vpor %xmm8, %xmm3, %xmm1                        #  7     0x1d  5      OPC=vpor_xmm_xmm_xmm  
  retq                                            #  8     0x22  1      OPC=retq              
                                                                                              
.size target, .-target
