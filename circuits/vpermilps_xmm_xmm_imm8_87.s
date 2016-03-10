  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  vmovshdup %xmm2, %xmm14                   #  1     0     4      OPC=vmovshdup_xmm_xmm      
  vmovups %ymm14, %ymm10                    #  2     0x4   5      OPC=vmovups_ymm_ymm        
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0x9   5      OPC=callq_label            
  vmovd %r9d, %xmm1                         #  4     0xe   5      OPC=vmovd_xmm_r32          
  vunpcklps %ymm10, %ymm1, %ymm10           #  5     0x13  5      OPC=vunpcklps_ymm_ymm_ymm  
  vunpcklpd %xmm14, %xmm10, %xmm1           #  6     0x18  5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                      #  7     0x1d  1      OPC=retq                   
                                                                                             
.size target, .-target
