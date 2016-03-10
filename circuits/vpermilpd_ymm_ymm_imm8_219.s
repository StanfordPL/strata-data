  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label              
  vmaxps %ymm2, %ymm2, %ymm1                #  2     0x5   4      OPC=vmaxps_ymm_ymm_ymm       
  vmovd %eax, %xmm12                        #  3     0x9   4      OPC=vmovd_xmm_r32            
  callq .move_128_64_xmm2_xmm12_xmm13       #  4     0xd   5      OPC=callq_label              
  vpunpckhqdq %ymm12, %ymm2, %ymm14         #  5     0x12  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movsd %xmm14, %xmm1                       #  6     0x17  5      OPC=movsd_xmm_xmm            
  retq                                      #  7     0x1c  1      OPC=retq                     
                                                                                               
.size target, .-target
