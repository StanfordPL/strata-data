  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label           
  vmovd %r9d, %xmm5                         #  2     0x5   5      OPC=vmovd_xmm_r32         
  vmovd %r8d, %xmm4                         #  3     0xa   5      OPC=vmovd_xmm_r32         
  vbroadcastss %xmm5, %ymm9                 #  4     0xf   5      OPC=vbroadcastss_ymm_xmm  
  vbroadcastss %xmm4, %ymm1                 #  5     0x14  5      OPC=vbroadcastss_ymm_xmm  
  vmovhlps %xmm1, %xmm9, %xmm1              #  6     0x19  4      OPC=vmovhlps_xmm_xmm_xmm  
  retq                                      #  7     0x1d  1      OPC=retq                  
                                                                                            
.size target, .-target
