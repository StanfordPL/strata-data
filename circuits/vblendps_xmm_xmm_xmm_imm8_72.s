  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vcvttss2sil %xmm10, %r13d                       #  2     0x5   5      OPC=vcvttss2sil_r32_xmm      
  vxorpd %xmm3, %xmm10, %xmm4                     #  3     0xa   4      OPC=vxorpd_xmm_xmm_xmm       
  vpunpckhqdq %xmm9, %xmm3, %xmm14                #  4     0xe   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovshdup %ymm14, %ymm11                        #  5     0x13  5      OPC=vmovshdup_ymm_ymm        
  vcvtsi2sdl %r13d, %xmm4, %xmm1                  #  6     0x18  5      OPC=vcvtsi2sdl_xmm_xmm_r32   
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1d  5      OPC=callq_label              
  retq                                            #  8     0x22  1      OPC=retq                     
                                                                                                     
.size target, .-target
