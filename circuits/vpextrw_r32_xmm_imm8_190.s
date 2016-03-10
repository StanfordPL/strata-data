  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  vsubps %xmm1, %xmm1, %xmm10               #  1     0     4      OPC=vsubps_xmm_xmm_xmm     
  vpbroadcastb %xmm10, %ymm15               #  2     0x4   5      OPC=vpbroadcastb_ymm_xmm   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x9   5      OPC=callq_label            
  vunpcklps %ymm15, %ymm10, %ymm14          #  4     0xe   5      OPC=vunpcklps_ymm_ymm_ymm  
  vmovmskpd %xmm14, %ebx                    #  5     0x13  5      OPC=vmovmskpd_r32_xmm      
  xchgw %bx, %r9w                           #  6     0x18  4      OPC=xchgw_r16_r16          
  retq                                      #  7     0x1c  1      OPC=retq                   
                                                                                             
.size target, .-target
