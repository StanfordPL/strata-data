  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label         
  vmovd %eax, %xmm1                         #  2     0x5   4      OPC=vmovd_xmm_r32       
  vmovapd %ymm1, %ymm0                      #  3     0x9   4      OPC=vmovapd_ymm_ymm     
  vxorps %xmm2, %xmm0, %xmm10               #  4     0xd   4      OPC=vxorps_xmm_xmm_xmm  
  vmovd %r8d, %xmm11                        #  5     0x11  5      OPC=vmovd_xmm_r32       
  callq .move_64_128_xmm10_xmm11_xmm1       #  6     0x16  5      OPC=callq_label         
  retq                                      #  7     0x1b  1      OPC=retq                
                                                                                          
.size target, .-target
