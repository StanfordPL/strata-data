  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label            
  vmovshdup %xmm2, %xmm9                    #  2     0x5   4      OPC=vmovshdup_xmm_xmm      
  vmovd %r9d, %xmm0                         #  3     0x9   5      OPC=vmovd_xmm_r32          
  vunpcklps %ymm9, %ymm0, %ymm0             #  4     0xe   5      OPC=vunpcklps_ymm_ymm_ymm  
  vmovddup %xmm0, %xmm1                     #  5     0x13  4      OPC=vmovddup_xmm_xmm       
  retq                                      #  6     0x17  1      OPC=retq                   
                                                                                             
.size target, .-target
