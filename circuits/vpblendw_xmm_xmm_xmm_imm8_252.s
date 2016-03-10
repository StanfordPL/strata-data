  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  callq .move_128_032_xmm3_eax_edx_r8d_r9d        #  2     0x5   5      OPC=callq_label            
  vunpcklpd %xmm3, %xmm2, %xmm6                   #  3     0xa   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmaxps %ymm6, %ymm6, %ymm0                      #  4     0xe   4      OPC=vmaxps_ymm_ymm_ymm     
  vmovd %r8d, %xmm1                               #  5     0x12  5      OPC=vmovd_xmm_r32          
  vmovupd %ymm0, %ymm8                            #  6     0x17  4      OPC=vmovupd_ymm_ymm        
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1b  5      OPC=callq_label            
  retq                                            #  8     0x20  1      OPC=retq                   
                                                                                                   
.size target, .-target
