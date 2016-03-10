  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  vpbroadcastd %xmm3, %ymm4                 #  1     0     5      OPC=vpbroadcastd_ymm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label           
  unpckhps %xmm3, %xmm4                     #  3     0xa   3      OPC=unpckhps_xmm_xmm      
  movd %r9d, %xmm0                          #  4     0xd   5      OPC=movd_xmm_r32          
  vmovsldup %xmm0, %xmm1                    #  5     0x12  4      OPC=vmovsldup_xmm_xmm     
  vmovlhps %xmm4, %xmm1, %xmm1              #  6     0x16  4      OPC=vmovlhps_xmm_xmm_xmm  
  retq                                      #  7     0x1a  1      OPC=retq                  
                                                                                            
.size target, .-target
