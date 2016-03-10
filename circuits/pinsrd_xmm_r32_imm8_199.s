  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label            
  vmovd %r8d, %xmm0                         #  2     0x5   5      OPC=vmovd_xmm_r32          
  vmovd %ebx, %xmm6                         #  3     0xa   4      OPC=vmovd_xmm_r32          
  vunpcklps %ymm6, %ymm0, %ymm7             #  4     0xe   4      OPC=vunpcklps_ymm_ymm_ymm  
  unpcklpd %xmm7, %xmm1                     #  5     0x12  4      OPC=unpcklpd_xmm_xmm       
  retq                                      #  6     0x16  1      OPC=retq                   
                                                                                             
.size target, .-target
